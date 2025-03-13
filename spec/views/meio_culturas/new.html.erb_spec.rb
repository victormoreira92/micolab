require 'rails_helper'

RSpec.describe "meios_culturas/new", type: :view do
  before(:each) do
    assign(:meio_cultura, MeioCultura.new(
      index: "MyString",
      show: "MyString",
      edit: "MyString",
      create: "MyString",
      update: "MyString"
    ))
  end

  it "renders new meio_cultura form" do
    render

    assert_select "form[action=?][method=?]", meios_culturas_path, "post" do

      assert_select "input[name=?]", "meio_cultura[index]"

      assert_select "input[name=?]", "meio_cultura[show]"

      assert_select "input[name=?]", "meio_cultura[edit]"

      assert_select "input[name=?]", "meio_cultura[create]"

      assert_select "input[name=?]", "meio_cultura[update]"
    end
  end
end
