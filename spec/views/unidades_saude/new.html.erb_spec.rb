require 'rails_helper'

RSpec.describe "unidades_saude/new", type: :view do
  before(:each) do
    assign(:unidade_saude, UnidadeSaude.new(
      unidade_nome: "MyString",
      email: "MyString",
      telefone: "MyString",
      cep: "MyString",
      municipio: "MyString",
      unidade_federativa: "MyString"
    ))
  end

  it "renders new unidade_saude form" do
    render

    assert_select "form[action=?][method=?]", unidade_saudes_path, "post" do

      assert_select "input[name=?]", "unidade_saude[unidade_nome]"

      assert_select "input[name=?]", "unidade_saude[email]"

      assert_select "input[name=?]", "unidade_saude[telefone]"

      assert_select "input[name=?]", "unidade_saude[cep]"

      assert_select "input[name=?]", "unidade_saude[municipio]"

      assert_select "input[name=?]", "unidade_saude[unidade_federativa]"
    end
  end
end
