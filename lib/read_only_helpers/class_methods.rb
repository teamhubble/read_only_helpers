require 'active_record'
module ReadOnlyHelpers
  module ClassMethods
    def delete(*)
      fail ActiveRecord::ReadOnlyRecord
    end

    def delete_all(*)
      fail ActiveRecord::ReadOnlyRecord
    end

    def update_all(*)
      fail ActiveRecord::ReadOnlyRecord
    end

    def readonly?
      true
    end
  end
end
