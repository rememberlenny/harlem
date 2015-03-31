require 'rails_helper'

RSpec.describe "newsletters/show", type: :view do
  before(:each) do
    @newsletter = assign(:newsletter, Newsletter.create!(
      :title => "Title",
      :message => "MyText",
      :schedules => "MyText",
      :photos => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
