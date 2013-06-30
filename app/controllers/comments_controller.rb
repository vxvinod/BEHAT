class CommentsController < ApplicationController
  def create
  	@behatweb=Behatweb.find(params[:behatweb_id])
  	@comment=@behatweb.comments.create!(params[:comment])
  	redirect_to @behatweb

  end

  def new
  	@behat=Behatweb.new
  
end
