require 'spec_helper'

describe Tugboat::Middleware::FindDroplet do
  include_context "spec"

  let(:app) { lambda { |env| } }
  let(:env) { {} }

  describe ".call" do
    it "raises SystemExit with no droplet data" do
      expect {described_class.new(app).call(env) }.to raise_error(SystemExit)
    end
  end

end
