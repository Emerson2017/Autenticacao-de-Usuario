require 'test_helper'

class ControleAcessosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @controle_acesso = controle_acessos(:one)
  end

  test "should get index" do
    get controle_acessos_url
    assert_response :success
  end

  test "should get new" do
    get new_controle_acesso_url
    assert_response :success
  end

  test "should create controle_acesso" do
    assert_difference('ControleAcesso.count') do
      post controle_acessos_url, params: { controle_acesso: {  } }
    end

    assert_redirected_to controle_acesso_url(ControleAcesso.last)
  end

  test "should show controle_acesso" do
    get controle_acesso_url(@controle_acesso)
    assert_response :success
  end

  test "should get edit" do
    get edit_controle_acesso_url(@controle_acesso)
    assert_response :success
  end

  test "should update controle_acesso" do
    patch controle_acesso_url(@controle_acesso), params: { controle_acesso: {  } }
    assert_redirected_to controle_acesso_url(@controle_acesso)
  end

  test "should destroy controle_acesso" do
    assert_difference('ControleAcesso.count', -1) do
      delete controle_acesso_url(@controle_acesso)
    end

    assert_redirected_to controle_acessos_url
  end
end
