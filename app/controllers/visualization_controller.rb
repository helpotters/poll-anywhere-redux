# frozen_string_literal: true

class VisualizationController < ApplicationController
  def show
    # NOTE: Increase clarity in params
    @poll = Poll.find(params[:poll][:id])
    respond_to do |format|
      if @poll
        format.html { render 'show' }
      else
        format.html { redirect_to :root, status: 404 }
      end
    end
  end
end
