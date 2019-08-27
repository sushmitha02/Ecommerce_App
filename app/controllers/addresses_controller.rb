class AddressesController < InheritedResources::Base
  before_action :set_address, only: [:show, :edit, :update, :destroy]
  
  def index
  	@addresses = Address.all
  end

  # GET /Addresss/1
  # GET /Addresss/1.json
  def show
  end

  # GET /Addresss/new
  def new
  	@address = Address.new
  end

  # GET /Addresss/1/edit
  def edit
  end

  # POST /Addresss
  # POST /Addresss.json
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

  # PATCH/PUT /Addresss/1
  # PATCH/PUT /Addresss/1.json
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

  # DELETE /Addresss/1
  # DELETE /Addresss/1.json
  def destroy
  	@address.destroy
  	respond_to do |format|
  		format.html { redirect_to addresses_url, notice: 'Address was successfully destroyed.' }
  		format.json { head :no_content }
  	end
  end

  private

  def set_address
  	@address = Address.find(params[:id])
  end

  def address_params
  	params.require(:address).permit(:name, :phone_no, :address1, :address2, :city, :state, :pincode)
  end

end
