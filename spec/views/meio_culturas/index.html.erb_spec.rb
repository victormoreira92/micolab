require 'rails_helper'

RSpec.describe "meios_culturas/index", type: :view do
  before(:each) do
    assign(:meios_culturas, [
      MeioCultura.create!(
        index: "Index",
        show: "Show",
        edit: "Edit",
        create: "Create",
        update: "Update"
      ),
      MeioCultura.create!(
        index: "Index",
        show: "Show",
        edit: "Edit",
        create: "Create",
        update: "Update"
      )
    ])
  end

  it "renders a list of meios_culturas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Index".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Show".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Edit".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Create".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Update".to_s), count: 2
  end
end
