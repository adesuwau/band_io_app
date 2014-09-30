require 'rails_helper'

RSpec.describe "venues/new", :type => :view do
  before(:each) do
    assign(:venue, Venue.new(
      :name => "MyString",
      :city => "MyString",
      :state => "MyString",
      :family_friendly => "MyString"
    ))
  end

  it "renders new venue form" do
    render

    assert_select "form[action=?][method=?]", venues_path, "post" do

      assert_select "input#venue_name[name=?]", "venue[name]"

      assert_select "input#venue_city[name=?]", "venue[city]"

      assert_select "input#venue_state[name=?]", "venue[state]"

      assert_select "input#venue_family_friendly[name=?]", "venue[family_friendly]"
    end
  end
end
