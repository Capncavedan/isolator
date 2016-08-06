RSpec.describe "/shipments/new", type: :view do

  it "works" do
    assign :shipment, Shipment.new
    expect { render }.to_not raise_error
  end

end
