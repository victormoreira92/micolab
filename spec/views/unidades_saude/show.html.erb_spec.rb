require 'rails_helper'

RSpec.describe "unidades_saude/show", type: :view do
  before(:each) do
    assign(:unidade_saude, UnidadeSaude.create!(
      unidade_nome: "Unidade Nome",
      email: "Email",
      telefone: "Telefone",
      cep: "Cep",
      municipio: "Municipio",
      unidade_federativa: "Unidade Federativa"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Unidade Nome/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/Cep/)
    expect(rendered).to match(/Municipio/)
    expect(rendered).to match(/Unidade Federativa/)
  end
end
