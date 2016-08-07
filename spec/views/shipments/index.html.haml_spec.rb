RSpec.describe "shipments/index.html.haml", type: :view do

  before do
    assign :shipments, []
    expect(view).to receive(:will_paginate)
  end

  it "renders successfully" do
    expect { render }.to_not raise_error
  end

end
