class PollsController < ApplicationController
  def new
    @poll = Poll.new
  end

  def edit; end

  def create
    @poll = Poll.create(poll_params)

    respond_to do |format|
      if @poll.save
        format.html { render :edit, notice: 'Poll created' }
      else
        format.html { render :new }
      end
    end
  end

  def show; end

  private

  def poll_params
    params.require(:poll).permit(:title)
  end
end
