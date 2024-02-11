class EnrollmentsController < ApplicationController
  def index
    matching_enrollments = Enrollment.all

    @list_of_enrollments = matching_enrollments.order({ :created_at => :desc })

    render({ :template => "enrollments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_enrollments = Enrollment.where({ :id => the_id })

    @the_enrollment = matching_enrollments.at(0)

    render({ :template => "enrollments/show.html.erb" })
  end

  def create
    @enrollment = Enrollment.new
    @enrollment.course_id = params.fetch("query_course_id")
    @enrollment.student_id = params.fetch("query_student_id")

    if @enrollment.valid?
      @enrollment.save
      redirect_to("/students/#{@enrollment.student_id}", { :notice => "Enrollment created successfully." })
    else
      redirect_to("/students/#{@enrollment.student_id}", { :notice => "Enrollment failed to create successfully." })
    end
  end
end
