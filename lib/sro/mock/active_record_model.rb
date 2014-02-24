module Sro::Mock
  class ActiveRecordModel < ActiveRecord::Base
    def inject_getter(key)
      getter = set_getter(key)
      self.instance_eval(getter)
    end

    def inject_setter(key)
      setter = set_setter(key)
      self.instance_eval(setter)
    end

    def run(args)
      args.each do |key, value|
        inject_getter(key)
        inject_setter(key)
        set_value(key, value)
      end

      self
    end

    def set_getter(key)
      "def #{key}; @#{key} ; end;"
    end

    def set_setter(key)
      "def #{key}=(value); @#{key}=value; end;"
    end

    def set_value(key, value)
      self.instance_variable_set("@#{key}", value)
    end
  end
end
