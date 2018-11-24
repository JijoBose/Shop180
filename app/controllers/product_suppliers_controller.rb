class ProductSuppliersController < ApplicationController
  before_action :set_product_supplier, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /product_suppliers
  # GET /product_suppliers.json
  def index
    @product_suppliers = ProductSupplier.all
  end

  # GET /product_suppliers/1
  # GET /product_suppliers/1.json
  def show
  end

  # GET /product_suppliers/new
  def new
    @product_supplier = ProductSupplier.new
  end

  # GET /product_suppliers/1/edit
  def edit
  end

  # POST /product_suppliers
  # POST /product_suppliers.json
  def create
    @product_supplier = ProductSupplier.new(product_supplier_params)

    respond_to do |format|
      if @product_supplier.save
        format.html { redirect_to @product_supplier, notice: 'Product supplier was successfully created.' }
        format.json { render :show, status: :created, location: @product_supplier }
      else
        format.html { render :new }
        format.json { render json: @product_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_suppliers/1
  # PATCH/PUT /product_suppliers/1.json
  def update
    respond_to do |format|
      if @product_supplier.update(product_supplier_params)
        format.html { redirect_to @product_supplier, notice: 'Product supplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_supplier }
      else
        format.html { render :edit }
        format.json { render json: @product_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_suppliers/1
  # DELETE /product_suppliers/1.json
  def destroy
    @product_supplier.destroy
    respond_to do |format|
      format.html { redirect_to product_suppliers_url, notice: 'Product supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_supplier
      @product_supplier = ProductSupplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_supplier_params
      params.require(:product_supplier).permit(:product_id, :supplier_id)
    end
end
