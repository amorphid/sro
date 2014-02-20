require "spec_helper"

describe Version5 do
  subject { Version5.new }

  context "#timestamp" do
    it "returns a UUIDTools::UUID object" do
      object    = subject.timestamp
      obj_class = object.class
      expect(obj_class).to eq(UUIDTools::UUID)
    end
  end
end
