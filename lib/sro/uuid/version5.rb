module Sro::Uuid
  class Version5
    def mac_address
      mac_address = UUIDTools::UUID.mac_address
    end

    def timestamp
      UUIDTools::UUID.timestamp_create
    end
  end
end
