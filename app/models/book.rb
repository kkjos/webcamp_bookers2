class Book < ApplicationRecord

  belongs_to :user

  validates :text, presence: true
  validates :body, presence: true

end
