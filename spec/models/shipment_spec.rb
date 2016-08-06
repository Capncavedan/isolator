RSpec.describe Shipment, type: :model do

  it "can be instantiated" do
    expect { Shipment.new }.to_not raise_error
  end

end
