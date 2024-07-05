require 'rails_helper'

RSpec.describe "unidades_saude/edit", type: :view do
  let(:unidade_saude) {
    UnidadeSaude.create!(
      unidade_nome: "MyString",
      email: "MyString",
      telefone: "MyString",
      cep: "MyString",
      municipio: "MyString",
      unidade_federativa: "MyString"
    )
  }

  before(:each) do
    assign(:unidade_saude, unidade_saude)
  end

  it "renders the edit unidade_saude form" do
    render

    assert_select "form[action=?][method=?]", unidade_saude_path(unidade_saude), "post" do

      assert_select "input[name=?]", "unidade_saude[unidade_nome]"

      assert_select "input[name=?]", "unidade_saude[email]"

      assert_select "input[name=?]", "unidade_saude[telefone]"

      assert_select "input[name=?]", "unidade_saude[cep]"

      assert_select "input[name=?]", "unidade_saude[municipio]"

      assert_select "input[name=?]", "unidade_saude[unidade_federativa]"
    end
  end
end
