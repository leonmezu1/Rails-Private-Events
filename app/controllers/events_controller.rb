# frozen_string_literal: true

# Events controller
class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  def new
    @event = Event.new
  end

  def index
    @events = Event.all
    @upcoming = Event.upcoming
    @past = Event.past
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash.now[:sucess] = 'Event created'
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  def edit; end

  def show; end

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
    params.require(:event).permit(:id, :name, :description, :category,
                                  :location, :event_date)
  end

  def set_event
    @event = Event.find(event_params[:id])
  end
end
