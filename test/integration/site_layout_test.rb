require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end


  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    #Nao estou a perceber estas duas linhas de codigo abaixo do comentario?????, sao
    #correspondentes a Lisnting 5.36 do rails tutorial
    get contact_path
    assert_select "title", full_title("Contact")
  end

end
