require 'rails_helper'

RSpec.describe "venues/edit", :type => :view do
  before(:each) do
    @venue = assign(:venue, Venue.create!(
      :name => "MyString",
      :city => "MyString",
      :state => "MyString",
      :family_friendly => "MyString"
    ))
  end

  it "renders the edit venue form" do
    render

    assert_select "form[action=?][method=?]", venue_path(@venue), "post" do

      assert_select "input#venue_name[name=?]", "venue[name]"

      assert_select "input#venue_city[name=?]", "venue[city]"

      assert_select "input#venue_state[name=?]", "venue[state]"

      assert_select "input#venue_family_friendly[name=?]", "venue[family_friendly]"
    end
  end
end
