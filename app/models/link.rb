class Link < ApplicationRecord
  validates :name, {presence: true }
  validates :URL, {presence: true }
  validates :user_ID, {presence: true, uniqueness: true }
  validates :pass, {presence: true }
end
