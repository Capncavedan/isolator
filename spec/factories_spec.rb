RSpec.describe "FactoryGirl factories" do

  specify "they are all valid" do
    expect{ FactoryGirl.lint }.to_not raise_error
  end

end
