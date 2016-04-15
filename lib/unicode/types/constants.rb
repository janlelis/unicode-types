module Unicode
  module Types
    VERSION = "1.0.0".freeze
    UNICODE_VERSION = "8.0.0".freeze
    DATA_DIRECTORY = File.expand_path(File.dirname(__FILE__) + '/../../../data/').freeze
    INDEX_FILENAME = (DATA_DIRECTORY + '/types.marshal.gz').freeze
  end
end

