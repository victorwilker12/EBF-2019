class BacksystemController < ApplicationController
  layout 'base/home'
  before_action :authenticate_user!
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  def index
    @students = Student.all 
  end
  
   def laranja1
     @student= Student.all

      respond_to do |format|
        format.html
        format.pdf do
         render pdf: 'frequencia',
         template: "backsystem/frec/laranja1.html.erb",
         layout: "FREC/l1.html",
          #orientation: 'Landscape',
          page_size:    'A4'
       end
      end
  end
  def l2
     @student= Student.all

      respond_to do |format|
        format.html
        format.pdf do
         render pdf: 'frequencia',
         template: "backsystem/frec/l2.html.erb",
         layout: "FREC/l2.html",
          #orientation: 'Landscape',
          page_size:    'A4'
       end
      end
  end
   def r1
     @student= Student.all

      respond_to do |format|
        format.html
        format.pdf do
         render pdf: 'frequencia',
         template: "backsystem/frec/r1.html.erb",
         layout: "FREC/r1.html",
          #orientation: 'Landscape',
          page_size:    'A4'
       end
      end
  end
   def r2
     @student= Student.all

      respond_to do |format|
        format.html
        format.pdf do
         render pdf: 'frequencia',
         template: "backsystem/frec/r2.html.erb",
         layout: "FREC/r2.html",
          #orientation: 'Landscape',
          page_size:    'A4'
       end
      end
  end

   def v1
     @student= Student.all

      respond_to do |format|
        format.html
        format.pdf do
         render pdf: 'frequencia',
         template: "backsystem/frec/v1.html.erb",
         layout: "FREC/v1.html",
          #orientation: 'Landscape',
          page_size:    'A4'
       end
      end
  end
     def v2
     @student= Student.all

      respond_to do |format|
        format.html
        format.pdf do
         render pdf: 'frequencia',
         template: "backsystem/frec/v2.html.erb",
         layout: "FREC/v2.html",
          #orientation: 'Landscape',
          page_size:    'A4'
       end
      end
  end

   def a1
     @student= Student.all

      respond_to do |format|
        format.html
        format.pdf do
         render pdf: 'frequencia',
         template: "backsystem/frec/a1.html.erb",
         layout: "FREC/a1.html",
          #orientation: 'Landscape',
          page_size:    'A4'
       end
      end
  end
   def a2
     @student= Student.all

      respond_to do |format|
        format.html
        format.pdf do
         render pdf: 'frequencia',
         template: "backsystem/frec/a2.html.erb",
         layout: "FREC/a2.html",
          #orientation: 'Landscape',
          page_size:    'A4'
       end
      end
  end
     def az
     @student= Student.all

      respond_to do |format|
        format.html
        format.pdf do
         render pdf: 'frequencia',
         template: "backsystem/frec/az.html.erb",
         layout: "FREC/az.html",
          #orientation: 'Landscape',
          page_size:    'A4'
       end
      end
  end

    def ve
     @student= Student.all

      respond_to do |format|
        format.html
        format.pdf do
         render pdf: 'frequencia',
         template: "backsystem/frec/ve.html.erb",
         layout: "FREC/ve.html",
          #orientation: 'Landscape',
          page_size:    'A4'
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
