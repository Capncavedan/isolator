RSpec.describe "shipments/edit.html.haml", type: :view do

  before do
    assign :shipment, FactoryGirl.build_stubbed(:objective_a_shipment)
  end

  it "renders successfully" do
    expect { render }.to_not raise_error
  end

end
