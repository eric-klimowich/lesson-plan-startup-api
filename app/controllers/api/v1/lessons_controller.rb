class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render json: @lessons
  end

  def show
  end
end
