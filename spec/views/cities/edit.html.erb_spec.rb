require 'spec_helper'

describe "cities/edit" do
  before(:each) do
    @city = assign(:city, stub_model(City,
      :name => "MyString",
      :population => 1,
      :state => "MyString",
      :elevation => 1
    ))
  end

  it "renders the edit city form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", city_path(@city), "post" do
      assert_select "input#city_name[name=?]", "city[name]"
      assert_select "input#city_population[name=?]", "city[population]"
      assert_select "input#city_state[name=?]", "city[state]"
      assert_select "input#city_elevation[name=?]", "city[elevation]"
    end
  end
end
