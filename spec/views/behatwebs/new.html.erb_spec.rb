require 'spec_helper'

describe "behatwebs/new" do
  before(:each) do
    assign(:behatweb, stub_model(Behatweb,
      :title => "MyString",
      :content => "MyText",
      :author => "MyString"
    ).as_new_record)
  end

  it "renders new behatweb form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => behatwebs_path, :method => "post" do
      assert_select "input#behatweb_title", :name => "behatweb[title]"
      assert_select "textarea#behatweb_content", :name => "behatweb[content]"
      assert_select "input#behatweb_author", :name => "behatweb[author]"
    end
  end
end
