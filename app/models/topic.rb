class Topic < ActiveRecord::Base
  has_many :discussions

  validates :title, :presence => true

  scope :featured, -> { where("is_featured =?", true) }
end
