require 'rails_helper'

RSpec.describe "venues/index", :type => :view do
  before(:each) do
    assign(:venues, [
      Venue.create!(
        :name => "Name",
        :city => "City",
        :state => "State",
        :family_friendly => "Family Friendly"
      ),
      Venue.create!(
        :name => "Name",
        :city => "City",
        :state => "State",
        :family_friendly => "Family Friendly"
      )
    ])
  end

  it "renders a list of venues" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Family Friendly".to_s, :count => 2
  end
end
