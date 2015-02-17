class Post < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :content, presence: true, length: { minimum: 5 }
end
