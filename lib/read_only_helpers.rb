require 'read_only_helpers/instance_methods'
require 'read_only_helpers/class_methods'
module ReadOnlyHelpers
  def self.included(klass)
    klass.extend ClassMethods
  end
  include InstanceMethods
end
