require_relative "types/constants"

module Unicode
  module Types
    def self.types(string)
      res = []
      string.each_char{ |char|
        type_name = type(char)
        res << type_name unless res.include?(type_name)
      }   
      res.sort
    end 
    class << self; alias of types; end 

    def self.type(char)
      require_relative 'types/index' unless defined? ::Unicode::Types::INDEX
      codepoint_depth_offset = char.unpack("U")[0] or
          raise(ArgumentError, "Unicode::Types.type must be given a valid char")
      index_or_value = INDEX[:TYPES]
      [0x10000, 0x1000, 0x100, 0x10].each{ |depth|
        index_or_value         = index_or_value[codepoint_depth_offset / depth]
        codepoint_depth_offset = codepoint_depth_offset % depth
        unless index_or_value.is_a? Array
          return INDEX[:TYPE_NAMES][index_or_value.to_i]
        end
      }
      INDEX[:TYPE_NAMES][index_or_value[codepoint_depth_offset].to_i]
    end 

    def self.names
      require_relative 'types/index' unless defined? ::Unicode::Types::INDEX
      INDEX[:TYPE_NAMES].dup
    end
  end
end
