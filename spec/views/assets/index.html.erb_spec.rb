require 'rails_helper'

RSpec.describe "assets/index", type: :view do
  before(:each) do
    assign(:assets, [
      Asset.create!(
        owner: "Owner",
        address: "Address",
        rooms: 2,
        sqmt: 3,
        units: 4,
        shops: 5,
        parking: 6,
        floors: 7,
        air_cond: false,
        price: "9.99",
        type: "Type"
      ),
      Asset.create!(
        owner: "Owner",
        address: "Address",
        rooms: 2,
        sqmt: 3,
        units: 4,
        shops: 5,
        parking: 6,
        floors: 7,
        air_cond: false,
        price: "9.99",
        type: "Type"
      )
    ])
  end

  it "renders a list of assets" do
    render
    assert_select "tr>td", text: "Owner".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Type".to_s, count: 2
  end
end
