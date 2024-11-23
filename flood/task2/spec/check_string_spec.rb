require 'rspec'
require_relative '../check_string'

describe CheckString do
  let(:params) do 
    {
      str: 'двесотни',
      arr: ['две', 'тысячи', 'сотни']
    }
  end

  example do
    expect(described_class).to equal(CheckString)
  end

  describe '#can_break_string?' do
    it 'should return true' do
      check_string = described_class.new(params).perform
      expect(check_string).to be_truthy
    end

    it 'should return false' do
      check_string = described_class.new(params.merge(str: 'трисотни')).perform
      expect(check_string).to be_falsy
    end
  end
end