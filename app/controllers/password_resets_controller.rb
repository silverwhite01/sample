class PasswordResetsController < ApplicationController
    before_action :get_user,   only: [:edit, :update]
  before_action :valid_user, only: [:edit, :update]
 G
  def new
  end

  def edit
  end
  private

    def get_user
      @user = User.find_by(email: params[:email])
    end

    # 正しいユーザーかどうか確認する
    def valid_user
      unless (@user && @user.activated? &&
              @user.authenticated?(:reset, params[:id]))
        redirect_to root_url
      end
    end
end
