module Sro::Uuid
  class Version5
    def timestamp
      UUIDTools::UUID.timestamp_create
    end
  end
end
