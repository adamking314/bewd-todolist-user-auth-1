class Session < ApplicationRecord
    before_create :generate_token

    private

    def generate_token
      self.token ||= SecureRandom.hex(20)
    end

    belongs_to :user

    validates :session_token, presence: true, uniqueness: true
end
