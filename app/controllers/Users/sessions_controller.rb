# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super# do |resource|
      # BackgroundWorker.trigger(resource)
    # end
  end

  # POST /resource/sign_in
  def create
    super do |resource|
      BackgroundWorker.trigger(resource)
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected
  # confirmableモジュール を有効にしていない場合は、after_sign_up_path_for
  def after_inactive_sign_up_path_for(resource)
    new_user_session_path
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
