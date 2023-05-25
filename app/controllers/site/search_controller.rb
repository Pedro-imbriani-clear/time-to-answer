class Site::WelcomeController < SiteController
  def questions
    @questions = Question.includes(:answers).where("lower(descriptions) LIKE ?", "%#{params[:term].downcase}%"
                         .page(params[:page]))
  end
end