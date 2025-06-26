RSpec.describe HealthCheckController, type: :request do
  describe "GET /health-check" do
    subject { get health_check_path }
    it "returns expected status" do
      subject

      expect(response).to have_http_status(:ok)
    end

    it "returns expected body" do
      subject

      expect(response.body).to eq({}.to_json)
    end
  end
end
