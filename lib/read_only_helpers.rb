require_relative 'read_only_helpers/instance_methods'
require_relative 'read_only_helpers/class_methods'
require_relative 'read_only_helpers/matchers'

module ReadOnlyHelpers
  def self.included(klass)
    klass.extend ClassMethods
  end
  include InstanceMethods
end
