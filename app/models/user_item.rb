class UserItem < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :number, :inclusion => 1..20
  validates :description, presence: true
end
