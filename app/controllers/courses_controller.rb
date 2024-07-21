class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :edit, :update, :destroy]
    def index
        @courses = Course.all
    end
    def show
    end
    def new
        @course = Course.new
    end
    def edit
    end
    def create
        @course = Course.new(course_param)
        @course.user = User.first
        if @course.save
            flash[:notice] = "Course was created successfully."
            redirect_to course_path(@course)
        else
            render :new, status: :unprocessable_entity
        end
    end

    def update
        if @course.update(course_param)
            flash[:notice] = "Course was updated successfully."
               redirect_to course_path(@course)
        else
            render :edit, status: :unprocessable_entity
        end
    end
    def destroy
        @course.destroy
        flash[:notice] = "Course was deleted successfully."
        redirect_to courses_path, status: :see_other
    end
    private
    
    def set_course
        @course = Course.find(params[:id])
    end

    def course_param
        params.require(:course).permit(:name, :description,:price)
    end
end
