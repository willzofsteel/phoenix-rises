require_relative '../spec_helper'
require_relative '../test'

describe "hi" do
  it "should say hi" do
  	t = Test.new

    expect(t.say_hi).to eq('hi')
  end
end