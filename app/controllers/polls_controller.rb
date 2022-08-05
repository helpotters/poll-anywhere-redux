class PollsController < ApplicationController
  before_action :set_poll, except: %i[new index create]
  before_action :add_answers, only: %i[update]

  def new
    @poll = Poll.new
  end

  def edit
    @poll.options.build
  end

  def create
    @poll = Poll.create(poll_params)

    respond_to do |format|
      if @poll.save
        format.html { redirect_to edit_poll_path(@poll), notice: 'Poll created' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    if @poll.update(poll_params)
      render 'visualization/show', notice: 'Poll was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show; end

  private

  def set_poll
    @poll = Poll.find(params[:id])
  end

  def add_answers
    @poll.update(poll_params)
    p test = @poll.answers
    p test.each do |answer|
      p answer
    end
  end

  def poll_params
    params.require(:poll).permit(:id, :title,
                                 options_attributes: %i[id poll_id title _destroy],
                                 answers_attributes: %i[poll_id user_id option_id _destroy])
  end
end
