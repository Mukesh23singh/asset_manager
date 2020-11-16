require 'rails_helper'

RSpec.describe "assets/edit", type: :view do
  before(:each) do
    @asset = assign(:asset, Asset.create!(
      owner: "MyString",
      address: "MyString",
      rooms: 1,
      sqmt: 1,
      units: 1,
      shops: 1,
      parking: 1,
      floors: 1,
      air_cond: false,
      price: "9.99",
      type: ""
    ))
  end

  it "renders the edit asset form" do
    render

    assert_select "form[action=?][method=?]", asset_path(@asset), "post" do

      assert_select "input[name=?]", "asset[owner]"

      assert_select "input[name=?]", "asset[address]"

      assert_select "input[name=?]", "asset[rooms]"

      assert_select "input[name=?]", "asset[sqmt]"

      assert_select "input[name=?]", "asset[units]"

      assert_select "input[name=?]", "asset[shops]"

      assert_select "input[name=?]", "asset[parking]"

      assert_select "input[name=?]", "asset[floors]"

      assert_select "input[name=?]", "asset[air_cond]"

      assert_select "input[name=?]", "asset[price]"

      assert_select "input[name=?]", "asset[type]"
    end
  end
end
