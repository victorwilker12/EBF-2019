class BacksystemController < ApplicationController
  layout 'base/home'
  before_action :authenticate_user!
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  def index
    @student = Student.all 
  end
  def frequence
    @student = Student.all
  end

  def edit
    @student= Student.all
  end
  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to backsystem_frequence_path, notice: 'Student was successfully updated.' }
        #format.json { render :index, status: :ok, location: @student }
      else
        format.html { render :edit }
        #format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def student_params
    params.permit(:name, :age, :classroom, :father, :mom, :contact, :address, :go, :return,day:[])
  end
end
