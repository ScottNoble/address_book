require 'spec_helper'

describe "cities/new" do
  before(:each) do
    assign(:city, stub_model(City,
      :name => "MyString",
      :population => 1,
      :state => "MyString",
      :elevation => 1
    ).as_new_record)
  end

  it "renders new city form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cities_path, "post" do
      assert_select "input#city_name[name=?]", "city[name]"
      assert_select "input#city_population[name=?]", "city[population]"
      assert_select "input#city_state[name=?]", "city[state]"
      assert_select "input#city_elevation[name=?]", "city[elevation]"
    end
  end
end
