module Sro::Mock
  class ActiveRecordModel < ActiveRecord::Base
    def active_record_model
      ActiveRecordModel.new
    end

    def inject_getter(key)
      getter = set_getter(key)
      self.instance_eval(getter)
    end

    def inject_setter(key)
      setter = set_setter(key)
      self.instance_eval(setter)
    end

    def set_getter(key)
      "def #{key}; @#{key} ; end;"
    end

    def set_setter(key)
      "def #{key}=(value); @#{key}=value; end;"
    end
  end
end
