require 'rails_helper'

RSpec.describe "Receipes", type: :request do
  describe "GET /receipes" do
    it "works! (now write some real specs)" do
      get receipes_path
      expect(response).to have_http_status(200)
    end
  end
end
