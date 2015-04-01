require 'rails_helper'

RSpec.describe "newsletters/new", type: :view do
  before(:each) do
    assign(:newsletter, Newsletter.new(
      :title => "MyString",
      :message => "MyText"
    ))
  end

  it "renders new newsletter form" do
    render

    assert_select "form[action=?][method=?]", newsletters_path, "post" do

      assert_select "input#newsletter_title[name=?]", "newsletter[title]"

      assert_select "textarea#newsletter_message[name=?]", "newsletter[message]"
    end
  end
end
