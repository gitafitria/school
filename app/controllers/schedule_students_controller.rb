class ScheduleStudentsController < ApplicationController
  before_action :set_schedule_student, only: [:show, :edit, :update, :destroy]

  # GET /schedule_students
  # GET /schedule_students.json
  def index
    @schedule_students = ScheduleStudent.all
  end

  # GET /schedule_students/1
  # GET /schedule_students/1.json
  def show
  end

  # GET /schedule_students/new
  def new
    @schedule_student = ScheduleStudent.new
  end

  # GET /schedule_students/1/edit
  def edit
  end

  # POST /schedule_students
  # POST /schedule_students.json
  def create
    @schedule_student = ScheduleStudent.new(schedule_student_params)

    respond_to do |format|
      if @schedule_student.save
        format.html { redirect_to @schedule_student.schedule, notice: 'Schedule student was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_student }
      else
        format.html { render :new }
        format.json { render json: @schedule_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_students/1
  # PATCH/PUT /schedule_students/1.json
  def update
    respond_to do |format|
      if @schedule_student.update(schedule_student_params)
        format.html { redirect_to @schedule_student, notice: 'Schedule student was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_student }
      else
        format.html { render :edit }
        format.json { render json: @schedule_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_students/1
  # DELETE /schedule_students/1.json
  def destroy
    @schedule_student.destroy
    respond_to do |format|
      format.html { redirect_to schedule_students_url, notice: 'Schedule student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_student
      @schedule_student = ScheduleStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_student_params
      params.require(:schedule_student).permit(:schedule_id, :student_id)
    end
end
