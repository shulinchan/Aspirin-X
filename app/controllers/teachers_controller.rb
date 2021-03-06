class TeachersController < ApplicationController
  before_action :logged_in_user, only: [:show, :edit, :update, :destroy, :dashboard, :index]  
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  # GET /teachers
  # GET /teachers.json
  def index
    @teachers = Teacher.all
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
  end

  # GET /teachers/new
  def new
    logged_in_redirect
    @user = Teacher.new
  end

  # GET /teachers/1/edit
  def edit
  end

  # POST /teachers
  # POST /teachers.json
  def create
    @user = Teacher.new(teacher_params)
    if @user.save
      log_in @user, false
      flash[:success] = "Welcome to AspirinX!"
      # redirect_to teacher_url(@user)
      redirect_to ta_dashboard_path
    else
      render 'new'
    end

    # respond_to do |format|
    #   if @teacher.save
    #     format.html { redirect_to @teacher, notice: 'Teacher was successfully created.' }
    #     format.json { render :show, status: :created, location: @teacher }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @teacher.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /teachers/1
  # PATCH/PUT /teachers/1.json
  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    @teacher.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def dashboard
    @user = Teacher.find(session[:user_id])
    @course_list = Course.where(teacher_id: @user.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @user = Teacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
