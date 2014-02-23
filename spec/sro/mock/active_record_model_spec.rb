require "spec_helper"

describe Sro::Mock::ActiveRecordModel do
  subject { Sro::Mock::ActiveRecordModel.new }

  it "inherits from ActiveRecord::Base" do
    klass    = subject.class
    ancestors = klass.ancestors
    expect(ancestors).to include(ActiveRecord::Base)
  end

  context "#active_record_model" do
    it "returns an ActiveRecordModel object" do
      object = subject.active_record_model
      expect(object).to be_instance_of(Sro::Mock::ActiveRecordModel)
    end
  end
end
