require 'rails_helper'

RSpec.describe "meios_culturas/edit", type: :view do
  let(:meio_cultura) {
    MeioCultura.create!(
      index: "MyString",
      show: "MyString",
      edit: "MyString",
      create: "MyString",
      update: "MyString"
    )
  }

  before(:each) do
    assign(:meio_cultura, meio_cultura)
  end

  it "renders the edit meio_cultura form" do
    render

    assert_select "form[action=?][method=?]", meio_cultura_path(meio_cultura), "post" do

      assert_select "input[name=?]", "meio_cultura[index]"

      assert_select "input[name=?]", "meio_cultura[show]"

      assert_select "input[name=?]", "meio_cultura[edit]"

      assert_select "input[name=?]", "meio_cultura[create]"

      assert_select "input[name=?]", "meio_cultura[update]"
    end
  end
end
