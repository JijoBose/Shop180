require "application_system_test_case"

class ProductSuppliersTest < ApplicationSystemTestCase
  setup do
    @product_supplier = product_suppliers(:one)
  end

  test "visiting the index" do
    visit product_suppliers_url
    assert_selector "h1", text: "Product Suppliers"
  end

  test "creating a Product supplier" do
    visit product_suppliers_url
    click_on "New Product Supplier"

    fill_in "Product", with: @product_supplier.product_id
    fill_in "Supplier", with: @product_supplier.supplier_id
    click_on "Create Product supplier"

    assert_text "Product supplier was successfully created"
    click_on "Back"
  end

  test "updating a Product supplier" do
    visit product_suppliers_url
    click_on "Edit", match: :first

    fill_in "Product", with: @product_supplier.product_id
    fill_in "Supplier", with: @product_supplier.supplier_id
    click_on "Update Product supplier"

    assert_text "Product supplier was successfully updated"
    click_on "Back"
  end

  test "destroying a Product supplier" do
    visit product_suppliers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product supplier was successfully destroyed"
  end
end
