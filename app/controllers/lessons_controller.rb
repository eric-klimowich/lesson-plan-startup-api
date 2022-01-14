class LessonsController < ApplicationController
  def index
    render json: Lesson.all
  end

  def show
  end
end
