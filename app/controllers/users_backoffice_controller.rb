class ProfilesBackofficeController < ApplicationController
   before_action :authenticate_profile!
   layout 'users_backoffice'
end
