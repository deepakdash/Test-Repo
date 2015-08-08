class EntitleDiscountsController < ApplicationController
  before_filter :set_entitle_discount, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @entitle_discounts = EntitleDiscount.all
    respond_with(@entitle_discounts)
  end

  def show
    respond_with(@entitle_discount)
  end

  def new
    @entitle_discount = EntitleDiscount.new
    respond_with(@entitle_discount)
  end

  def edit
  end

  def create
    @entitle_discount = EntitleDiscount.new(params[:entitle_discount])
    @entitle_discount.save
    respond_with(@entitle_discount)
  end

  def update
    @entitle_discount.update_attributes(params[:entitle_discount])
    respond_with(@entitle_discount)
  end

  def destroy
    @entitle_discount.destroy
    respond_with(@entitle_discount)
  end

  private
    def set_entitle_discount
      @entitle_discount = EntitleDiscount.find(params[:id])
    end
end
