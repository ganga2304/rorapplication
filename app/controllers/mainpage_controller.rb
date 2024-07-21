class MainpageController < ApplicationController
    def home
     redirect_to courses_path if logged_in?
    end
end
