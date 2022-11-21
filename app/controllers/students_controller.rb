class StudentsController < ApplicationController

    def index 
        render json: Student.all
    end

    def grades
        render json: Student.order_by_grade
    end

    def highest_grade 
        render json: Student.highest_grade
    end
end
