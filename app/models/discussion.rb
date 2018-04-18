class Discussion < ActiveRecord::Base
  belongs_to :topic
  has_many :posts

  validates :description, :presence => true
end
