class Site::WelcomeController < SiteController
  def questions
    @questions = Question._search_(params[:page], paramns[:term])
  end
end