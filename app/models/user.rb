class User < ApplicationRecord
  validates :name, :age, :gender, :address, :phone, :email, presence: true
end
