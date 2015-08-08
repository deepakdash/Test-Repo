class TestNamesController < ApplicationController
  before_filter :set_test_name, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    
    @test_title = TestTitle.where(:id=>params[:test_title_id]).first
    respond_with(@test_names)
  end

  def show
    respond_with(@test_name)
  end

  def new
    @test_name = TestName.new
    respond_with(@test_name)
  end

  def edit
  end

  def create
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!!"
    p params
    params[:name].each_with_index do |n,i|
      p params[:element]["#{i}"]
     @test_name = TestName.new
     @test_name.test_title_id = params[:test_name][:test_title_id]
     @test_name.name = n[1]
     @test_name.element = params[:element]["#{i}"]
     @test_name.bio_ref = params[:bio_ref]["#{i}"]
     @test_name.unit_mea = params[:unit]["#{i}"]
     @test_name.mth_tec = params[:mth]["#{i}"]
     @test_name.result = params[:result]["#{i}"]
     @test_name.save
    end

    #@test_name = TestName.new(params[:test_name])

    @test_name.save
    respond_with(@test_name)
  end

  def update
    @test_name.update_attributes(params[:test_name])
    respond_with(@test_name)
  end

  def destroy
    @test_name.destroy
    respond_with(@test_name)
  end

  private
    def set_test_name
      @test_name = TestName.find(params[:id])
    end
end
