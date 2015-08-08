class EntitleIncentiveDetailsController < ApplicationController
  before_filter :set_entitle_incentive_detail, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @entitle_incentive_details = EntitleIncentiveDetail.all
    respond_with(@entitle_incentive_details)
  end

  def show
    respond_with(@entitle_incentive_detail)
  end

  def new
    @entitle_incentive_detail = EntitleIncentiveDetail.new
    respond_with(@entitle_incentive_detail)
  end

  def edit
  end

  def create
    @entitle_incentive_detail = EntitleIncentiveDetail.new(params[:entitle_incentive_detail])
    @entitle_incentive_detail.save
    redirect_to "/entitles_incentive_detail/#{@entitle_incentive_detail.entitle_incentive_id}"
  end

  def update
    @entitle_incentive_detail.update_attributes(params[:entitle_incentive_detail])
    respond_with(@entitle_incentive_detail)
  end

  def destroy
    @entitle_incentive_detail.destroy
    respond_with(@entitle_incentive_detail)
  end

  private
    def set_entitle_incentive_detail
      @entitle_incentive_detail = EntitleIncentiveDetail.find(params[:id])
    end
end
