class StudentsController < ApplicationController
  layout 'base/home'
  before_action :authenticate_user!
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all.order(name: :asc)
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to students_path, notice: 'Student was successfully created.' }
        #format.json { render :index, status: :created, location: @student }
      else
        format.html { render :new }
        #format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to students_path, notice: 'Student was successfully updated.' }
        #format.json { render :index, status: :ok, location: @student }
      else
        format.html { render :edit }
        #format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def certificate
    @student= Student.find(params[:id])

      respond_to do |format|
        format.html
        format.pdf do
         render pdf: @student.name,
         template: "backsystem/certificate.html.erb",
         layout: "pdf.html",
         # orientation: 'Landscape',
          page_size:    'A4'
       end
    end

  end

  def report
    @student= Student.find(params[:id])

    respond_to do |format|
      format.html
      format.pdf do
       render pdf: @student.name,
       template: "students/show.html.erb",
       layout: "report.html",
        #orientation: 'Landscape',
        page_size:    'A4'
     end
  end

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



  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :age, :classroom, :father, :mom, :contact, :address, :go, :return,day:[])
    end

    #form_params # => { week_selection: { days: ["0", "Mon", "0", "Tue", "0", "0", "0", "0", "0"] }
end
