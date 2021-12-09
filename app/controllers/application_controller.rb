class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:image, :artist_id, :name, :member, :info, :city_id, :genre_id, :website, :twitter,
                                             :instagram])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: [:image, :artist_id, :name, :member, :info, :city_id, :genre_id, :website, :twitter,
                                             :instagram])
  end
end
