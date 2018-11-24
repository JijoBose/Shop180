require 'test_helper'

class ProductSuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_supplier = product_suppliers(:one)
  end

  test "should get index" do
    get product_suppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_product_supplier_url
    assert_response :success
  end

  test "should create product_supplier" do
    assert_difference('ProductSupplier.count') do
      post product_suppliers_url, params: { product_supplier: { product_id: @product_supplier.product_id, supplier_id: @product_supplier.supplier_id } }
    end

    assert_redirected_to product_supplier_url(ProductSupplier.last)
  end

  test "should show product_supplier" do
    get product_supplier_url(@product_supplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_supplier_url(@product_supplier)
    assert_response :success
  end

  test "should update product_supplier" do
    patch product_supplier_url(@product_supplier), params: { product_supplier: { product_id: @product_supplier.product_id, supplier_id: @product_supplier.supplier_id } }
    assert_redirected_to product_supplier_url(@product_supplier)
  end

  test "should destroy product_supplier" do
    assert_difference('ProductSupplier.count', -1) do
      delete product_supplier_url(@product_supplier)
    end

    assert_redirected_to product_suppliers_url
  end
end
