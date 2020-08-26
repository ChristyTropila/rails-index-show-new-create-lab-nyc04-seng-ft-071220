class CouponsController < ApplicationController

#displays all our coupons  /coupons
def index
 @coupons=Coupon.all
end

#displays one coupon based on the id of that object coupon/:id
def show
    @coupon=Coupon.find(params[:id])
end

#Creates a new instance of coupon coupons/new
def new
    # @coupon=Coupon.new
end


#creates a new coupon and redirects to the show 1 coupon page /coupons/:id
def create
    @coupon=Coupon.new
    @coupon[:coupon_code]=params[:coupon][:coupon_code]
    @coupon[:store]=params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
end


end
  