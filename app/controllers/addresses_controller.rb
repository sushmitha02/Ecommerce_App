class AddressesController < InheritedResources::Base

	def index
		@addresses = Address.all
	end

	def show
	end

  def new
  	@address = Address.new
  end

  def edit
  end

  def create
  	@address = Address.new(address_params)

  	respond_to do |format|
  		if @address.save
  			format.html { redirect_to @address, notice: 'Address was successfully created.' }
  			format.json { render :show, status: :created, location: @address }
  		else
  			format.html { render :new }
  			format.json { render json: @address.errors, status: :unprocessable_entity }
  		end
  	end
  end

  def update
  	respond_to do |format|
  		if @address.update(address_params)
  			format.html { redirect_to @address, notice: 'Address was successfully updated.' }
  			format.json { render :show, status: :ok, location: @address }
  		else
  			format.html { render :edit }
  			format.json { render json: @address.errors, status: :unprocessable_entity }
  		end
  	end
  end

  def destroy
  	@address.destroy
  	respond_to do |format|
  		format.html { redirect_to addresses_url, notice: 'Address was successfully destroyed.' }
  		format.json { head :no_content }
  	end
  end

  def set_address
  	@address = address.find(params[:id])
  end

  private

  def address_params
  	params.require(:address).permit(:name, :phone_no, :address1, :address2, :city, :state, :pincode)
  end

end
