require 'rails_helper'

RSpec.describe "newsletters/edit", type: :view do
  before(:each) do
    @newsletter = assign(:newsletter, Newsletter.create!(
      :title => "MyString",
      :message => "MyText",
      :schedules => "MyText",
      :photos => "MyText"
    ))
  end

  it "renders the edit newsletter form" do
    render

    assert_select "form[action=?][method=?]", newsletter_path(@newsletter), "post" do

      assert_select "input#newsletter_title[name=?]", "newsletter[title]"

      assert_select "textarea#newsletter_message[name=?]", "newsletter[message]"

      assert_select "textarea#newsletter_schedules[name=?]", "newsletter[schedules]"

      assert_select "textarea#newsletter_photos[name=?]", "newsletter[photos]"
    end
  end
end
