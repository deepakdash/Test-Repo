class EntitleIncentivesController < ApplicationController
  before_filter :set_entitle_incentive, only: [:show, :edit, :update, :destroy]
  require 'securerandom'

  respond_to :html

  def index
    @entitle_incentives = EntitleIncentive.all
    respond_with(@entitle_incentives)
  end

  def show
    respond_with(@entitle_incentive)
  end

  def new
    @entitle_incentive = EntitleIncentive.new
    respond_with(@entitle_incentive)
  end

  def edit
  end

  def create
    @entitle_incentive = EntitleIncentive.new(params[:entitle_incentive])
    
    @entitle_incentive.save
    respond_with(@entitle_incentive)
  end

  def update
    @entitle_incentive.update_attributes(params[:entitle_incentive])
    respond_with(@entitle_incentive)
  end

  def destroy
    @entitle_incentive.destroy
    respond_with(@entitle_incentive)
  end

  private
    def set_entitle_incentive
      @entitle_incentive = EntitleIncentive.find(params[:id])
    end
end
