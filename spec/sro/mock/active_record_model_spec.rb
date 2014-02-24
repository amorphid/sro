require "spec_helper"

describe Sro::Mock::ActiveRecordModel do
  subject { Sro::Mock::ActiveRecordModel.new }

  it "inherits from ActiveRecord::Base" do
    klass    = subject.class
    ancestors = klass.ancestors
    expect(ancestors).to include(ActiveRecord::Base)
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

  context "#set_setter" do
    it "generates setter" do
      getter = subject.set_setter(:hello)
      expect(getter).to eq("def hello=(value); @hello=value; end;")
    end
  end

  context "#set_value" do
    it "sets instance variable" do
      subject.set_value(:hello, "world")
      hello = subject.instance_variable_get("@hello")
      expect(hello).to eq("world")
    end
  end

  context "#run" do
    it "creates getters and setters from input" do
      subject.run(hello: "world", seeya: nil)
      expect(subject.hello).to eq("world")
      expect(subject.seeya).to eq(nil)
      subject.seeya = "later"
      expect(subject.seeya).to eq("later")
    end
  end
end
