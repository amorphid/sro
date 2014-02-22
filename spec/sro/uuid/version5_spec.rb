require "spec_helper"

describe Uuid::Version5 do
  subject { Uuid::Version5.new }

  context "#mac_address" do
    it "retrieves computers mac address" do
      mac_address = subject.mac_address
      pattern     = /((\d|[a-f]){2}:){5}(\d|[a-f]){2}/
      expect(mac_address).to match(pattern)
    end
  end

  context "#timestamp" do
    it "returns a UUIDTools::UUID object" do
      object = subject.timestamp
      expect(object).to be_instance_of(UUIDTools::UUID)
    end
  end

  context "#version5" do
    it "generates a Version 5 UUID" do
      object = subject.version5
      expect(object).to be_instance_of(UUIDTools::UUID)
    end
  end
end
