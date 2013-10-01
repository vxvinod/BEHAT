class Comment < ActiveRecord::Base
  belongs_to :behatweb
  attr_accessible :body, :name
end
