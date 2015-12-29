require "rails_helper"

describe "pages#home" do

  it "Should return contact route found" do
    get root_path

    expect(response.status).to eq(200)
  end

end

describe "pages#contact" do

  it "Should return contact route found" do
    get contact_path

    expect(response.status).to eq(200)
  end

end

describe "pages#error_404" do

  it "Should return page route found" do
    get "/404"

    expect(response.status).to eq(404)
  end

end