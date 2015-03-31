require 'rails_helper'

RSpec.describe "newsletters/new", type: :view do
  before(:each) do
    assign(:newsletter, Newsletter.new(
      :title => "MyString",
      :message => "MyText",
      :schedule_id => 1,
      :photo_id => 1
    ))
  end

  it "renders new newsletter form" do
    render

    assert_select "form[action=?][method=?]", newsletters_path, "post" do

      assert_select "input#newsletter_title[name=?]", "newsletter[title]"

      assert_select "textarea#newsletter_message[name=?]", "newsletter[message]"

      assert_select "input#newsletter_schedule_id[name=?]", "newsletter[schedule_id]"

      assert_select "input#newsletter_photo_id[name=?]", "newsletter[photo_id]"
    end
  end
end
