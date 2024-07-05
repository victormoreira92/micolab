require 'rails_helper'

RSpec.describe "unidades_saude/index", type: :view do
  before(:each) do
    assign(:unidade_saudes, [
      UnidadeSaude.create!(
        unidade_nome: "Unidade Nome",
        email: "Email",
        telefone: "Telefone",
        cep: "Cep",
        municipio: "Municipio",
        unidade_federativa: "Unidade Federativa"
      ),
      UnidadeSaude.create!(
        unidade_nome: "Unidade Nome",
        email: "Email",
        telefone: "Telefone",
        cep: "Cep",
        municipio: "Municipio",
        unidade_federativa: "Unidade Federativa"
      )
    ])
  end

  it "renders a list of unidades_saude" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Unidade Nome".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Telefone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Cep".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Municipio".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Unidade Federativa".to_s), count: 2
  end
end
