require 'test_helper'

class RemuneracoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @remuneracao = remuneracoes(:one)
  end

  test "should get index" do
    get remuneracoes_url
    assert_response :success
  end

  test "should get new" do
    get new_remuneracao_url
    assert_response :success
  end

  test "should create remuneracao" do
    assert_difference('Remuneracao.count') do
      post remuneracoes_url, params: { remuneracao: { funcionario_id: @remuneracao.funcionario_id, salario: @remuneracao.salario } }
    end

    assert_redirected_to remuneracao_url(Remuneracao.last)
  end

  test "should show remuneracao" do
    get remuneracao_url(@remuneracao)
    assert_response :success
  end

  test "should get edit" do
    get edit_remuneracao_url(@remuneracao)
    assert_response :success
  end

  test "should update remuneracao" do
    patch remuneracao_url(@remuneracao), params: { remuneracao: { funcionario_id: @remuneracao.funcionario_id, salario: @remuneracao.salario } }
    assert_redirected_to remuneracao_url(@remuneracao)
  end

  test "should destroy remuneracao" do
    assert_difference('Remuneracao.count', -1) do
      delete remuneracao_url(@remuneracao)
    end

    assert_redirected_to remuneracoes_url
  end
end
