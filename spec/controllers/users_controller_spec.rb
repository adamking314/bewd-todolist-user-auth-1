
require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views

  describe 'POST /users' do
    it 'renders new user object' do
      post :create, params: {
      user: {
       username: 'testing',
      password: 'testing123'
        }
          }

      expect(response.body).to eq({
        user: {
          username: 'test'
        }
      }.to_json)
    end
  end
end
