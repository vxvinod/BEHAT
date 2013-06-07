require 'spec_helper'



describe "Behats" do
	subject {page}
  describe "Home Page" do
  	before{visit root_path}
    it {should have_selector('h1', text: 'Behats#home')}

  end

  describe "Book Page" do
  	before{visit book_path}
    it {should have_selector('h1', text: 'Behats#book')}

  end

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
end
