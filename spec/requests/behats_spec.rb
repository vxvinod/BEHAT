require 'spec_helper'



describe "Behats" do
	subject {page}


  describe "Help  Page" do
  	before{visit help_path}
    it {should have_selector('h1', text: 'Behats#help')}

  end

  describe "Contact Page" do
  	before{visit contact_path}
    it {should have_selector('h1', text: 'Behats#contact')}

  end

  describe "Aboutus Page" do
  	before{visit aboutus_path}
    it {should have_selector('h1', text: 'Behats#aboutus')}

  end

  describe "createcontent page" do
    before{visit createcontent_path}


    let(:submit) { "createcontent"}
    describe "check create content with invalid information" do
      it "should not create an user" do
        expect { click_button submit}.not_to change(Behatcont, :count)
      end
    end

    describe "check create content with vaid information" do

      before do
        fill_in "title", with: "Installation"
        fill_in "content", with: "this is the installation procedure for behat hope u will enjoy the content"
        fill_in "author",with:"vinod"
      end

      
      it "should create a user" do
        expect { click_button submit }.to change(Behatcont,:count).by(1)
      end
    end

  end
  
end
