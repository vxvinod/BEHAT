# == Schema Information
#
# Table name: behatblogs
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  author     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Behatblog do
  before do
   @chapter1=Behatblog.new(title:"chapter1",content:"hello how are you",author:"vinod")
end
  subject { @chapter1}
  it {should respond_to(:title)}
  it {should respond_to(:content)}
  it {should respond_to(:author)}

  describe " when title is not present should return an error" do
  before { @chapter1.title=" "}
  it{should_not be_valid}
  end 

  describe " when title is not present should return an error" do
  before { @chapter1.content=" "}
  it{should_not be_valid}
  end 

  describe " when title is not present should return an error" do
  before { @chapter1.author=" "}
  it{should_not be_valid}
  end 
end
