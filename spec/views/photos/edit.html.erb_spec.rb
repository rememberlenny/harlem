require 'rails_helper'

RSpec.describe "photos/edit", type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      :title => "MyString",
      :url => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do

      assert_select "input#photo_title[name=?]", "photo[title]"

      assert_select "input#photo_url[name=?]", "photo[url]"

      assert_select "textarea#photo_notes[name=?]", "photo[notes]"
    end
  end
end
