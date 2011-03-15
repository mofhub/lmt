require 'spec_helper'

describe "cities/edit.html.erb" do
  before(:each) do
    @city = assign(:city, stub_model(City,
      :new_record? => false
    ))
  end

  it "renders the edit city form" do
    render

    rendered.should have_selector("form", :action => city_path(@city), :method => "post") do |form|
    end
  end
end
