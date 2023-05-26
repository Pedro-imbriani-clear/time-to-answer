class ProfilesBackofficeController < ApplicationController
  before_action :authenticate_profile!
  before_action :build_profile
  layout 'users_backoffice'

  private

  def build_profile
    current_ser.build_user_profile if current_user.user_profile.blank?
  end
end
