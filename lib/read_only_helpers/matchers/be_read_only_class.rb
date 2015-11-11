require 'active_record'
module ReadOnlyHelpers
  module Matchers
    class BeReadOnlyClass
      def supports_block_expectations?
        false
      end

      def matches?(class_ref)
        @class_ref = class_ref
        is_read_only &&
          fail_test(:destroy) &&
          fail_test(:delete)
      end

      def is_read_only
        return false unless @class_ref.respond_to?(:readonly?)
        @class_ref.readonly?
      end

      def fail_test(method)
        @class_ref.send(method)
        return false
      rescue ActiveRecord::ReadOnlyRecord
        return true
      rescue => exception
        @error = exception
        return false
      end

      def failure_message
        "expected to have class read only and raise ActiveRecord::ReadOnlyRecord but got #{@error} with '#{@class_ref}'"
      end

      def failure_message_when_negated
        "expected to not raise ActiveRecord::ReadOnlyRecord but got #{@error} with '#{@class_ref}'"
      end
    end

    def be_read_only_class
      BeReadOnlyClass.new
    end
  end
end
