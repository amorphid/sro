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

  context "#inject_getter" do
    it "adds method to the object" do
      subject.inject_getter("hello")
      subject.instance_variable_set("@hello", "world")
      hello  = subject.hello
      expect(hello).to eq("world")
    end
  end

  context "#inject_setter" do
    it "adds method to the object" do
      subject.inject_setter(:hello)
      subject.hello = "world"
      hello  = subject.instance_variable_get("@hello")
      expect(hello).to eq("world")
    end
  end

  context "#set_getter" do
    it "generates getter" do
      getter = subject.set_getter(:hello)
      expect(getter).to eq("def hello; @hello ; end;")
    end
  end
end
