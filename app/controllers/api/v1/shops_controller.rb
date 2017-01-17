class Api::V1::ShopsController < ApplicationController
  before_action :get_shop_id, only: [:show, :update, :destroy]

  def index
    @owner = Owner.find(params[:owner_id])
    @shops = @owner.shops.all

    render json: @shops
  end

  def create
    @owner = Owner.find(params[:owner_id])
    @shop = @owner.shops.create(shop_params)

    render json: @shop
  end

  def show
    render json: @shop
  end

  def update
    @shop.update(shop_params)

    render json: @shop
  end

  def destroy
    @shop.destroy

    render json: @shop
  end

  private

  def get_shop_id
    @owner = Owner.find(params[:owner_id])
    @shop = @owner.shops.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:owner_id, :shop_name, :shop_address, :shop_postcode, :shop_phone_number, :shop_other_phone_number, :shop_fax_number)
  end
end
