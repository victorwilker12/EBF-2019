class BacksystemController < ApplicationController
  layout 'base/home'
  before_action :authenticate_user!
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  def index
    @students = Student.all 
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
