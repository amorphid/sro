require "spec_helper"

describe Sro::Mock do
  subject { Sro::Mock }

  context "#self_active_record_model" do
    it "returns an ActiveRecordModel object" do
      object = subject.active_record_model(hello: "world")
      expect(object).to be_instance_of(Sro::Mock::ActiveRecordModel)
    end
  end
end
