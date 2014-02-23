require "spec_helper"

describe Sro::Mock::ActiveRecordModel do
  subject { Sro::Mock::ActiveRecordModel.new }

  context "#active_record_model" do
    it "returns an ActiveRecordModel object" do
      object = subject.active_record_model
      expect(object).to be_instance_of(Sro::Mock::ActiveRecordModel)
    end
  end
end
