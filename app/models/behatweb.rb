class Behatweb < ActiveRecord::Base
  attr_accessible :author, :content, :title
  has_many :comments

  validates :title,presence: true
  validates :author,presence: true
  validates :content,presence: true

  
end
