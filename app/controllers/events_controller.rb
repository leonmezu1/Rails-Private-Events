# frozen_string_literal: true

class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash.now[:sucess] = "Event created"
      redirect_to @event
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def update
    if @event.update(event_params)
      flash[:success] = 'Event updated succesfully!'
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :category, :loaction, :event_date)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
