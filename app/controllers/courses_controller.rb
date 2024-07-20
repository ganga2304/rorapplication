class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end
    def show
        @course = Course.find(params[:id])
    end
    def new

    end
    def create
        @course = Course.new(params.require(:course).permit(:name, :description,:price))
        @course.save
        redirect_to course_path(@course)
    end

end
