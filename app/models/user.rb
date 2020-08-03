class User < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :description, presence: true, length: {maximum: 140}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
    validates :age, presence: true, length: {maximum: 3}
    validates :city_id, presence: true
    belongs_to :city
    has_many :gossips

end

