require 'rails_helper'

RSpec.describe "bands/edit", :type => :view do
  before(:each) do
    @band = assign(:band, Band.create!(
      :name => "MyString",
      :genre => "MyString",
      :explicit_lyrics => "MyString"
    ))
  end

  it "renders the edit band form" do
    render

    assert_select "form[action=?][method=?]", band_path(@band), "post" do

      assert_select "input#band_name[name=?]", "band[name]"

      assert_select "input#band_genre[name=?]", "band[genre]"

      assert_select "input#band_explicit_lyrics[name=?]", "band[explicit_lyrics]"
    end
  end
end
