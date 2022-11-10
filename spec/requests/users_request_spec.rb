# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Users, type: :request do
  before(:all) do
    @users = create(:users)
    @users.save
  end

  describe 'crear user' do
    it 'si tiene atributos válidos' do
      expect do
        post user_path, params: {
          user: {
            email: @user.email,
            encrypted_password: @user.encrypted_password,
            reset_password_token: @user.reset_password_token,
            reset_password_sent_at: @user.reset_password_sent_at,
            remember_created_at: @user.remember_created_at
          }
        }
      end.to change(User, :count).by(1)
    end
  end

  describe 'delete user' do
    it 'borra user si existe' do
      expect do
        delete user_path(@user)
      end.to user(user, :count).by(-1)
    end
  end
end
