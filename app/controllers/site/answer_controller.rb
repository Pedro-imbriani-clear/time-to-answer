class Site::WelcomeController < SiteController
  def questions
    @answer = Answer.find(params[:answer_id])
    UserStatistic.set_statistic(@answer, current_user)
  end
end