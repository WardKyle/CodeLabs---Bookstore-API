class Author < ApplicationRecord
  validates :author, presence: true, uniqueness: true

  has_many :books
end
