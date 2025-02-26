require 'rails_helper'

RSpec.describe "meios_culturas/show", type: :view do
  before(:each) do
    assign(:meio_cultura, MeioCultura.create!(
      index: "Index",
      show: "Show",
      edit: "Edit",
      create: "Create",
      update: "Update"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Index/)
    expect(rendered).to match(/Show/)
    expect(rendered).to match(/Edit/)
    expect(rendered).to match(/Create/)
    expect(rendered).to match(/Update/)
  end
end
