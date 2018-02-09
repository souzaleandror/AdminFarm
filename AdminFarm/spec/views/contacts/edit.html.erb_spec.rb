require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :message => "MyText",
      :accept => false,
      :newsletter => false,
      :info => "MyString",
      :obs => "MyString",
      :answered => false
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input[name=?]", "contact[name]"

      assert_select "input[name=?]", "contact[email]"

      assert_select "input[name=?]", "contact[phone]"

      assert_select "textarea[name=?]", "contact[message]"

      assert_select "input[name=?]", "contact[accept]"

      assert_select "input[name=?]", "contact[newsletter]"

      assert_select "input[name=?]", "contact[info]"

      assert_select "input[name=?]", "contact[obs]"

      assert_select "input[name=?]", "contact[answered]"
    end
  end
end
