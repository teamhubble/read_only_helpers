require 'spec_helper'

describe ReadOnlyHelpers do
  class TestClass
    include ReadOnlyHelpers
  end

  let(:single_model) { TestClass.new }

  describe 'batch operations' do
    it 'should raise error on delete_all' do
      expect { TestClass.delete_all }.to raise_error(ActiveRecord::ReadOnlyRecord)
    end

    it 'should raise error on update_all' do
      expect { TestClass.update_all }.to raise_exception(ActiveRecord::ReadOnlyRecord)
    end

    it 'should raise error on delete single item' do
      expect { TestClass.delete(12) }.to raise_exception(ActiveRecord::ReadOnlyRecord)
    end

    it 'should say true on readonly' do
      expect(TestClass.readonly?).to eq(true)
    end
  end

  describe 'single operations' do
    it 'should have readonly attribute' do
      expect(single_model.readonly?).to eq(true)
    end

    it 'should raise error on delete' do
      expect { single_model.delete }.to raise_exception(ActiveRecord::ReadOnlyRecord)
    end

    it 'should raise error on destroy' do
      expect { single_model.destroy }.to raise_exception(ActiveRecord::ReadOnlyRecord)
    end
  end
end
