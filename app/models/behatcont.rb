class Behatcont < ActiveRecord::Base
  attr_accessible :author, :content, :title 

  validates :title,presence: true
  validates :content,presence: true
  validates :author,presence: true
end
