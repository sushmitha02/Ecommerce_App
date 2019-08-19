class AddressesController < InheritedResources::Base

  private

  def address_params
  	params.require(:address).permit(:name, :phone_no, :address1, :address2, :city, :state, :pincode)
  end

end
