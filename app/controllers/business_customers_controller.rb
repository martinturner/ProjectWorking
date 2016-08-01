class BusinessCustomersController < ApplicationController
  before_action :set_business_customer, only: [:show, :edit, :update, :destroy]

  # GET /business_customers
  # GET /business_customers.json
  def index
    @business_customers = BusinessCustomer.all
  end

  # GET /business_customers/1
  # GET /business_customers/1.json
  def show
  end

  # GET /business_customers/new
  def new
    @business_customer = BusinessCustomer.new
  end

  # GET /business_customers/1/edit
  def edit
  end

  # POST /business_customers
  # POST /business_customers.json
  def create
    @business_customer = BusinessCustomer.new(business_customer_params)

    respond_to do |format|
      if @business_customer.save
        format.html { redirect_to @business_customer, notice: 'Business customer was successfully created.' }
        format.json { render :show, status: :created, location: @business_customer }
      else
        format.html { render :new }
        format.json { render json: @business_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_customers/1
  # PATCH/PUT /business_customers/1.json
  def update
    respond_to do |format|
      if @business_customer.update(business_customer_params)
        format.html { redirect_to @business_customer, notice: 'Business customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_customer }
      else
        format.html { render :edit }
        format.json { render json: @business_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_customers/1
  # DELETE /business_customers/1.json
  def destroy
    @business_customer.destroy
    respond_to do |format|
      format.html { redirect_to business_customers_url, notice: 'Business customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_customer
      @business_customer = BusinessCustomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_customer_params
      params.require(:business_customer).permit(:business_id, :customer_id)
    end
end
