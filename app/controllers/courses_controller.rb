class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end
    def show
        @course = Course.find(params[:id])
    end
    def new
        @course = Course.new
    end
    def edit
        @course = Course.find(params[:id])
    end
    def create
        @course = Course.new(params.require(:course).permit(:name, :description,:price))
        if @course.save
            flash[:notice] = "Course was created successfully."
            redirect_to course_path(@course)
        else
            render :new, status: :unprocessable_entity
        end
    end

    def update
        @course = Course.find(params[:id])
        if @course.update(params.require(:course).permit(:name, :description,:price))
            flash[:notice] = "Course was updated successfully."
               redirect_to course_path(@course)
        else
            render :edit, status: :unprocessable_entity
        end
    end
    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        flash[:notice] = "Course was deleted successfully."
        redirect_to courses_path, status: :see_other
    end
end
