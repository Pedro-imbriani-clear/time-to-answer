class Site::WelcomeController < SiteController
  def questions
    @answer = Answer.find(params[:answer_id])
  end
end