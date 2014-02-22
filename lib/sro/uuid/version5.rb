module Sro::Uuid
  class Version5
    def mac_address
      mac_address = UUIDTools::UUID.mac_address
    end

    def timestamp
      UUIDTools::UUID.timestamp_create
    end

    def version5
      UUIDTools::UUID.sha1_create(timestamp, mac_address)
    end
  end
end
