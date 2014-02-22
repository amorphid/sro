require "spec_helper"

describe Uuid::Version5 do
  subject { Uuid::Version5.new }

  context "#timestamp" do
    it "returns a UUIDTools::UUID object" do
      object    = subject.timestamp
      obj_class = object.class
      expect(obj_class).to eq(UUIDTools::UUID)
    end
  end
end
