class TestTitlesController < ApplicationController
  before_filter :set_test_title, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @dpt = Department.where(:id=>params[:dep_id]).first
    puts "!!!!!"
    p @dpt

    @test_titles = @dpt.test_titles
    respond_with(@test_titles)
  end

  def show
    respond_with(@test_title)
  end

  def new
    @test_title = TestTitle.new
    respond_with(@test_title)
  end

  def edit
  end

  def create
    @test_title = TestTitle.new(params[:test_title])
    @a = Time.now
    @a = SecureRandom.urlsafe_base64(7)
    @test_title.test_title_code = @a
    @test_title.save
    respond_with(@test_title)
  end

  def update
    @test_title.update_attributes(params[:test_title])
    respond_with(@test_title)
  end

  def destroy
    @test_title.destroy
    respond_with(@test_title)
  end

  private
    def set_test_title
      @test_title = TestTitle.find(params[:id])
    end
end
