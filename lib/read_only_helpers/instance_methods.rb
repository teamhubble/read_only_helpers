require 'active_record'
module ReadOnlyHelpers
  module InstanceMethods
    def readonly?
      true
    end

    def delete
      fail ActiveRecord::ReadOnlyRecord if readonly?
      super
    end

    def destroy
      fail ActiveRecord::ReadOnlyRecord if readonly?
      super
    end
  end
end
