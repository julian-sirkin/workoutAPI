require 'rails_helper'

RSpec.describe "Excercises", type: :request do
  describe "GET /excercises" do
    it "works! (now write some real specs)" do
      get excercises_path
      expect(response).to have_http_status(200)
    end
  end
end
