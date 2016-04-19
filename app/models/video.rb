class Video < ActiveRecord::Base
  validates :title, presence: true
  validates :embed, presence: true

end