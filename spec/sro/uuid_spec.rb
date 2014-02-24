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

  context "#version5" do
    it "matches the pattern" do
      uuid    = subject.version5
      pattern = subject.pattern
      expect(uuid).to match(pattern)
    end
  end
end
