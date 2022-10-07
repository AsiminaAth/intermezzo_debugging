require 'exercise_1'

RSpec.describe 'say_hello method' do
    it "takes a name and returns a greeting message" do
        returning_sting = say_hello("Kay")
        expect(returning_sting).to eq "hello Kay"
    end
end