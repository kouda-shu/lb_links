class User < ApplicationRecord
  validates :name, {presence: true, uniqueness: true }
  validates :pass, {presence: true, length: {minimum: 6} }
end
