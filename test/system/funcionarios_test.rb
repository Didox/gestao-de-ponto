require "application_system_test_case"

class FuncionariosTest < ApplicationSystemTestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "visiting the index" do
    visit funcionarios_url
    assert_selector "h1", text: "Funcionarios"
  end

  test "creating a Funcionario" do
    visit funcionarios_url
    click_on "New Funcionario"

    fill_in "Nome", with: @funcionario.nome
    click_on "Create Funcionario"

    assert_text "Funcionario foi criado com sucesso"
    click_on "Back"
  end

  test "updating a Funcionario" do
    visit funcionarios_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @funcionario.nome
    click_on "Update Funcionario"

    assert_text "Funcionario foi atualizado com sucesso"
    click_on "Back"
  end

  test "destroying a Funcionario" do
    visit funcionarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Funcionario foi apagado com sucesso"
  end
end
