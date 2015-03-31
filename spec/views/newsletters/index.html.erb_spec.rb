require 'rails_helper'

RSpec.describe "newsletters/index", type: :view do
  before(:each) do
    assign(:newsletters, [
      Newsletter.create!(
        :title => "Title",
        :message => "MyText",
        :schedule_id => 1,
        :photo_id => 2
      ),
      Newsletter.create!(
        :title => "Title",
        :message => "MyText",
        :schedule_id => 1,
        :photo_id => 2
      )
    ])
  end

  it "renders a list of newsletters" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
