require 'spec_helper'

describe ReadOnlyHelpers::Matchers::BeReadOnlyInstance do
  class NonARClass
  end

  class ReadOnlyClass
    include ReadOnlyHelpers
  end

  class PartialARClass
    def self.readonly?
      true
    end
  end

  describe 'base checks' do
    it 'should give true on read only class' do
      expect(ReadOnlyClass).to be_read_only_instance
    end

    it 'should give false on non read only class' do
      expect(PartialARClass).not_to be_read_only_instance
    end

    it 'should give false on partially read only class' do
      expect(NonARClass).not_to be_read_only_instance
    end
  end
end
