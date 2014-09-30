require 'rails_helper'

RSpec.describe "bands/index", :type => :view do
  before(:each) do
    assign(:bands, [
      Band.create!(
        :name => "Name",
        :genre => "Genre",
        :explicit_lyrics => "Explicit Lyrics"
      ),
      Band.create!(
        :name => "Name",
        :genre => "Genre",
        :explicit_lyrics => "Explicit Lyrics"
      )
    ])
  end

  it "renders a list of bands" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Explicit Lyrics".to_s, :count => 2
  end
end
