require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :message => "MyText",
        :accept => false,
        :newsletter => false,
        :info => "Info",
        :obs => "Obs",
        :answered => false
      ),
      Contact.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :message => "MyText",
        :accept => false,
        :newsletter => false,
        :info => "Info",
        :obs => "Obs",
        :answered => false
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Info".to_s, :count => 2
    assert_select "tr>td", :text => "Obs".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
