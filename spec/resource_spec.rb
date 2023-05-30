# frozen_string_literal: true

FDPUSER = ENV['FDPUSER'] || "albert.einstein@example.com"
FDPPASS = ENV['FDPPASS'] || "password"

RSpec.describe FDPMate::DCATResource do
  it "has a version number" do
    expect(FDPMate::DCATResource.new).not_to be nil
  end
end
