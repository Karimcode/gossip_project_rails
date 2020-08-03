class Gossip < ApplicationRecord
    validates :title, presence: true, length: {minimum: 2, maximum: 14}
    validates :content, presence: true, length: {maximum: 300}
    validates :user_id, presence: true
    belongs_to :user
end
