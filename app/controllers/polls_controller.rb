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

  def update
    if @poll.update(poll_params)
      redirect_to edit_poll_path(@poll), notice: 'Poll was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show; end

  private

  def poll_params
    params.require(:poll).permit(:title, options_attributes: [:title])
  end
end
