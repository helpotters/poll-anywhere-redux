class AnswersController < ApplicationController
  def show; end

  def create; end

  private

  def answers_params
    params.permit(answers_attributes: %i[poll_id option_id user_id _destroy])
  end
end
