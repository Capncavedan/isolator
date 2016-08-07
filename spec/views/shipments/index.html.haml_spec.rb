RSpec.describe "shipments/index.html.haml", type: :view do

  before do
    assign :shipments, [ FactoryGirl.build_stubbed(:objective_a_shipment) ]
    expect(view).to receive(:will_paginate)
  end

  it "renders successfully" do
    expect { render }.to_not raise_error
  end

end
