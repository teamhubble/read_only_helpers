require 'spec_helper'

describe ReadOnlyHelpers::Matchers::BeReadOnlyInstance do
  class NonARClass
  end

  class ReadOnlyClass
    include ReadOnlyHelpers
  end

  class PartialARClass
    def readonly?
      true
    end
  end

  describe 'base checks' do
    let(:read_only_item) { ReadOnlyClass.new }
    let(:partial_ar_item) { PartialARClass.new }
    let(:non_ar_item) { NonARClass.new }

    it 'should give true on read only class' do
      expect(read_only_item).to be_read_only_class
    end

    it 'should give false on non read only class' do
      expect(partial_ar_item).not_to be_read_only_class
    end

    it 'should give false on partially read only class' do
      expect(non_ar_item).not_to be_read_only_class
    end
  end
end
