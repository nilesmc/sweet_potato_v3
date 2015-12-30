require "rails_helper"

describe "pages#home" do

  it "Should return contact route found" do
    get root_path

    expect(response.status).to eq(200)
  end

end


describe "pages#about" do

  it "Should return about route found" do
    get about_path

    expect(response.status).to eq(200)
  end

end

describe "pages#contact" do

  it "Should return contact route found" do
    get contact_path

    expect(response.status).to eq(200)
  end

end

describe "pages#help" do

  it "Should return help route found" do
    get help_path

    expect(response.status).to eq(200)
  end

end

describe "pages#terms" do

  it "Should return terms route found" do
    get terms_path

    expect(response.status).to eq(200)
  end

end

describe "pages#privacy" do

  it "Should return privacy route found" do
    get privacy_path

    expect(response.status).to eq(200)
  end

end

describe "pages#error_404" do

  it "Should return page route found" do
    get "/404"

    expect(response.status).to eq(404)
  end

end