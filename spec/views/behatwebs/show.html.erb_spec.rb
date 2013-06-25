require 'spec_helper'

describe "behatwebs/show" do
  before(:each) do
    @behatweb = assign(:behatweb, stub_model(Behatweb,
      :title => "Title",
      :content => "MyText",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Author/)
  end
end
