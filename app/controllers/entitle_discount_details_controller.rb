class EntitleDiscountDetailsController < ApplicationController
  before_filter :set_entitle_discount_detail, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @entitle_discount_details = EntitleDiscountDetail.all
    respond_with(@entitle_discount_details)
  end

  def show
    respond_with(@entitle_discount_detail)
  end

  def new
    @entitle_discount_detail = EntitleDiscountDetail.new
    respond_with(@entitle_discount_detail)
  end

  def edit
  end

  def create
    @entitle_discount_detail = EntitleDiscountDetail.new(params[:entitle_discount_detail])
    @entitle_discount_detail.save
    respond_with(@entitle_discount_detail)
  end

  def update
    @entitle_discount_detail.update_attributes(params[:entitle_discount_detail])
    respond_with(@entitle_discount_detail)
  end

  def destroy
    @entitle_discount_detail.destroy
    respond_with(@entitle_discount_detail)
  end

  private
    def set_entitle_discount_detail
      @entitle_discount_detail = EntitleDiscountDetail.find(params[:id])
    end
end
