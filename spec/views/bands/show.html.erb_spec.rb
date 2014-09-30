require 'rails_helper'

RSpec.describe "bands/show", :type => :view do
  before(:each) do
    @band = assign(:band, Band.create!(
      :name => "Name",
      :genre => "Genre",
      :explicit_lyrics => "Explicit Lyrics"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/Explicit Lyrics/)
  end
end
