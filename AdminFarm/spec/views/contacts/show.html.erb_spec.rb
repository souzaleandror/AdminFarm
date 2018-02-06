require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :name => "Name",
      :email => "Email",
      :phone => "Phone",
      :message => "MyText",
      :info => "Info",
      :obs => "Obs",
      :answered => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Info/)
    expect(rendered).to match(/Obs/)
    expect(rendered).to match(/false/)
  end
end
