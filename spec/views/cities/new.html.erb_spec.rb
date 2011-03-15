require 'spec_helper'

describe "cities/new.html.erb" do
  before(:each) do
    assign(:city, stub_model(City,
      :new_record? => true
    ))
  end

  it "renders new city form" do
    render

    rendered.should have_selector("form", :action => cities_path, :method => "post") do |form|
    end
  end
end
