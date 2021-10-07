class ApplicationController < ActionController::Base
  # 全ページログイン必須
　before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile_image, :avatar])
    # アカウント編集の時にnameとprofileとavatarのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile_image, :avatar])
  end
end
