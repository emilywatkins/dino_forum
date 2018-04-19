class Post < ActiveRecord::Base
  belongs_to :discussion

  validates :body, :presence => true

  scope :today, -> { where("created_at >=?", Time.now.beginning_of_day)}
end
