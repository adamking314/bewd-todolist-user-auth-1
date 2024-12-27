class Session < ApplicationRecord
  belongs_to :user

  before_validation :generate_session_token, on: :create

  private

  def generate_session_token
    self.session_token ||= SecureRandom.hex(16)
  end
end
