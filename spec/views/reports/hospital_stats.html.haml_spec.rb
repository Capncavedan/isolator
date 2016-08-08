RSpec.describe "reports/hospital_stats.html.haml", type: :view do

  it "renders" do
    assign :hospital_stats, Hash.new(0)
    assign :hospital_numbers, %w(1 2 3)
    expect{ render }.to_not raise_error
  end

end
