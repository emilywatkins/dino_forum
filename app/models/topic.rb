class Topic < ActiveRecord::Base
  has_many :discussions

  validates :title, :presence => true
end
