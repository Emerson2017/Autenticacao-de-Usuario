require 'test_helper'

class MinhasAtividadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minhas_atividade = minhas_atividades(:one)
  end

  test "should get index" do
    get minhas_atividades_url
    assert_response :success
  end

  test "should get new" do
    get new_minhas_atividade_url
    assert_response :success
  end

  test "should create minhas_atividade" do
    assert_difference('MinhasAtividade.count') do
      post minhas_atividades_url, params: { minhas_atividade: { atividade: @minhas_atividade.atividade, responsavel: @minhas_atividade.responsavel } }
    end

    assert_redirected_to minhas_atividade_url(MinhasAtividade.last)
  end

  test "should show minhas_atividade" do
    get minhas_atividade_url(@minhas_atividade)
    assert_response :success
  end

  test "should get edit" do
    get edit_minhas_atividade_url(@minhas_atividade)
    assert_response :success
  end

  test "should update minhas_atividade" do
    patch minhas_atividade_url(@minhas_atividade), params: { minhas_atividade: { atividade: @minhas_atividade.atividade, responsavel: @minhas_atividade.responsavel } }
    assert_redirected_to minhas_atividade_url(@minhas_atividade)
  end

  test "should destroy minhas_atividade" do
    assert_difference('MinhasAtividade.count', -1) do
      delete minhas_atividade_url(@minhas_atividade)
    end

    assert_redirected_to minhas_atividades_url
  end
end
