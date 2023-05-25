class Site::WelcomeController < SiteController
  def index
    @questions = Question.include(:answers).page(params[:page])
  end
end
