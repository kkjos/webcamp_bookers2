class Book < ApplicationRecord

  belongs_to :user

  validates :text, presence: true
  validates :body, presence: true, length: {maximum: 200}

end
