require 'rails_helper'

RSpec.describe "API V1 Search", type: 'request' do
  it "get api/v1/search" do
    get '/api/v1/search?title=Normal People'

    expect(response).to be_successful

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data][:attributes][:title]).not_to be_empty
    expect(json[:data][:attributes][:author]).not_to be_empty
    expect(json[:data][:attributes][:publisher]).not_to be_empty
    expect(json[:data][:attributes][:reviews]).not_to be_empty
  end
end
