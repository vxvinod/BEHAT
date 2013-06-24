require 'spec_helper'

describe "behatwebs/edit" do
  before(:each) do
    @behatweb = assign(:behatweb, stub_model(Behatweb,
      :title => "MyString",
      :content => "MyText",
      :author => "MyString"
    ))
  end

  it "renders the edit behatweb form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => behatwebs_path(@behatweb), :method => "post" do
      assert_select "input#behatweb_title", :name => "behatweb[title]"
      assert_select "textarea#behatweb_content", :name => "behatweb[content]"
      assert_select "input#behatweb_author", :name => "behatweb[author]"
    end
  end
end
