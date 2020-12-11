require "application_system_test_case"

class RemuneracoesTest < ApplicationSystemTestCase
  setup do
    @remuneracao = remuneracoes(:one)
  end

  test "visiting the index" do
    visit remuneracoes_url
    assert_selector "h1", text: "Remuneracoes"
  end

  test "creating a Remuneracao" do
    visit remuneracoes_url
    click_on "New Remuneracao"

    fill_in "Funcionario", with: @remuneracao.funcionario_id
    fill_in "Salario", with: @remuneracao.salario
    click_on "Create Remuneracao"

    assert_text "Remuneracao was successfully created"
    click_on "Back"
  end

  test "updating a Remuneracao" do
    visit remuneracoes_url
    click_on "Edit", match: :first

    fill_in "Funcionario", with: @remuneracao.funcionario_id
    fill_in "Salario", with: @remuneracao.salario
    click_on "Update Remuneracao"

    assert_text "Remuneracao was successfully updated"
    click_on "Back"
  end

  test "destroying a Remuneracao" do
    visit remuneracoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Remuneracao was successfully destroyed"
  end
end
