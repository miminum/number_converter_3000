require 'rails_helper'

RSpec.describe NumberConversion, type: :model do
  it "should convert numbers to binary" do
    n = NumberConversion.new(number:7, base:2)
    expect(n.result).to eq('111')

    n = NumberConversion.new(number:9, base:2)
    expect(n.result).to eq('1001')

    n = NumberConversion.new(number:189, base:2)
    expect(n.result).to eq('10111101')
  end
end
