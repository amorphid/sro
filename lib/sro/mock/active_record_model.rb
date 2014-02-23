module Sro::Mock
  class ActiveRecordModel < ActiveRecord::Base
    def active_record_model
      ActiveRecordModel.new
    end
  end
end
