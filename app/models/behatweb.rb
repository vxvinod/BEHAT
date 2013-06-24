class Behatweb < ActiveRecord::Base
  attr_accessible :author, :content, :title

  validates :title,presence: true
  validates :author,presence: true
  validates :content,presence: true

  
end
