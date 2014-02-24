module Sro::Mock
  def self.active_record_model(args)
    Sro::Mock::ActiveRecordModel.new.run(args)
  end
end
