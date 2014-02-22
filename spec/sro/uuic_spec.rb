require "spec_helper"

describe Sro::Uuid do
  subject { Sro::Uuid }

  context "#pattern" do
    it "matches the pattern" do
      pattern = subject.pattern
      uuid    = SecureRandom.uuid
      expect(pattern).to match(uuid)
    end
  end
end
