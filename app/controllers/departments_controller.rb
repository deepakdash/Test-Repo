class DepartmentsController < ApplicationController
  before_filter :set_department, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @department_labs = Department.where(:dep_type=>"Lab")
    @department_imo = Department.where(:dep_type=>"ImO")
  end

  def show
    respond_with(@department)
  end

  def new
    @department = Department.new
    respond_with(@department)
  end

  def edit
  end

  def create
    @department = Department.new(params[:department])
    if params[:department][:dep_type] == "Lab"
     @a = Time.now
     @a = SecureRandom.urlsafe_base64(3)
     @code = params[:department][:dep_type] + @a 
     @department.department_code = @code
    else
     @a = Time.now
     @a = SecureRandom.urlsafe_base64(3)
     @code = params[:department][:dep_type] + @a 
     @department.department_code = @code
    end
    @department.save
    respond_with(@department)
  end

  def update
    @department.update_attributes(params[:department])
    respond_with(@department)
  end

  def destroy
    @department.destroy
    respond_with(@department)
  end

  private
    def set_department
      @department = Department.find(params[:id])
    end
end
