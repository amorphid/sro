module Sro::Uuid
  def self.pattern
    p = /([a-z]|\d)/
    /#{p}{8}-(#{p}{4}-){3}#{p}{12}/
  end

  def self.version5
    Version5Uuid.new.run
  end
end
