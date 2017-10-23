require 'test_helper'

class MuralAtividadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mural_atividade = mural_atividades(:one)
  end

  test "should get index" do
    get mural_atividades_url
    assert_response :success
  end

  test "should get new" do
    get new_mural_atividade_url
    assert_response :success
  end

  test "should create mural_atividade" do
    assert_difference('MuralAtividade.count') do
      post mural_atividades_url, params: { mural_atividade: { atividade: @mural_atividade.atividade } }
    end

    assert_redirected_to mural_atividade_url(MuralAtividade.last)
  end

  test "should show mural_atividade" do
    get mural_atividade_url(@mural_atividade)
    assert_response :success
  end

  test "should get edit" do
    get edit_mural_atividade_url(@mural_atividade)
    assert_response :success
  end

  test "should update mural_atividade" do
    patch mural_atividade_url(@mural_atividade), params: { mural_atividade: { atividade: @mural_atividade.atividade } }
    assert_redirected_to mural_atividade_url(@mural_atividade)
  end

  test "should destroy mural_atividade" do
    assert_difference('MuralAtividade.count', -1) do
      delete mural_atividade_url(@mural_atividade)
    end

    assert_redirected_to mural_atividades_url
  end
end
