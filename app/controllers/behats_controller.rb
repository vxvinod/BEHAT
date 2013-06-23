class BehatsController < ApplicationController
  def home
  end

  def book
  end

  def help
    @chapter=Behatcont.find(2)
  end

  def contact
  end

  def aboutus
  end

  def createcontent
    @cont=Behatcont.new
  end
  
end
