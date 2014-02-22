module Sro::Uuid
  class Version5
    def mac_address
      UUIDTools::UUID.mac_address
    end

    def run
      version5.to_s
    end

    def timestamp
      UUIDTools::UUID.timestamp_create
    end

    def version5
      UUIDTools::UUID.sha1_create(timestamp, mac_address)
    end
  end
end
