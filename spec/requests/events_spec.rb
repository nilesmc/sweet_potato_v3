require "rails_helper"

describe "events#home" do

  it "Should return event index route found" do
    get events_index_path

    expect(response.status).to eq(200)
  end

end

describe "events#detail" do
  let(:event1) { FactoryGirl.create(:event) }

  it "Should return found" do
    get event_detail_path(event1.slug)

    expect(response.status).to eq(200)
  end

end