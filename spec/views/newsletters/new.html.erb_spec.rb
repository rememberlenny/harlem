require 'rails_helper'

RSpec.describe "newsletters/new", type: :view do
  before(:each) do
    assign(:newsletter, Newsletter.new(
      :title => "MyString",
      :message => "MyText",
      :schedules => "MyText",
      :photos => "MyText"
    ))
  end

  it "renders new newsletter form" do
    render

    assert_select "form[action=?][method=?]", newsletters_path, "post" do

      assert_select "input#newsletter_title[name=?]", "newsletter[title]"

      assert_select "textarea#newsletter_message[name=?]", "newsletter[message]"

      assert_select "textarea#newsletter_schedules[name=?]", "newsletter[schedules]"

      assert_select "textarea#newsletter_photos[name=?]", "newsletter[photos]"
    end
  end
end
