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

class Behatblog < ActiveRecord::Base
  attr_accessible :author, :content, :title

  validates :title,  presence: true
  validates :content,presence: true
  validates :author,presence: true
end
