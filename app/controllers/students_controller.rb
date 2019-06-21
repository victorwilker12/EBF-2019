class StudentsController < ApplicationController
  layout 'base/student'
  before_action :authenticate_user!
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
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
          orientation: 'Landscape',
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
