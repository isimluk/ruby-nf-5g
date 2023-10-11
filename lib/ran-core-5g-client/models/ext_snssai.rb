# frozen_string_literal: true

# #Namf_EventExposure
#
# AMF Event Exposure Service.   © 2023, 3GPP Organizational Partners (ARIB, ATIS, CCSA, ETSI, TSDSI, TTA, TTC).   All rights reserved.
#
# The version of the OpenAPI document: 1.3.0-alpha.3
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 7.1.0-SNAPSHOT
#

require 'date'
require 'time'

module Core5g
  # The sdRanges and wildcardSd attributes shall be exclusive from each other. If one of these attributes is present,  the sd attribute shall also be present and it shall contain one Slice Differentiator value within the range of SD  (if the sdRanges attribute is present) or with any value (if the wildcardSd attribute is present).
  class ExtSnssai
    # Unsigned integer, within the range 0 to 255, representing the Slice/Service Type.  It indicates the expected Network Slice behaviour in terms of features and services. Values 0 to 127 correspond to the standardized SST range. Values 128 to 255 correspond  to the Operator-specific range. See clause 28.4.2 of 3GPP TS 23.003. Standardized values are defined in clause 5.15.2.2 of 3GPP TS 23.501.
    attr_accessor :sst

    # 3-octet string, representing the Slice Differentiator, in hexadecimal representation. Each character in the string shall take a value of \"0\" to \"9\", \"a\" to \"f\" or \"A\" to \"F\" and shall represent 4 bits. The most significant character representing the 4 most significant bits of the SD shall appear first in the string, and the character representing the 4 least significant bit of the SD shall appear last in the string. This is an optional parameter that complements the Slice/Service type(s) to allow to  differentiate amongst multiple Network Slices of the same Slice/Service type. This IE shall be absent if no SD value is associated with the SST.
    attr_accessor :sd

    # When present, it shall contain the range(s) of Slice Differentiator values supported for the Slice/Service Type value indicated in the sst attribute of the Snssai data type
    attr_accessor :sd_ranges

    # When present, it shall be set to true, to indicate that all SD values are supported for the Slice/Service Type value indicated in the sst attribute of the Snssai data type.
    attr_accessor :wildcard_sd

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        sst: :sst,
        sd: :sd,
        sd_ranges: :sdRanges,
        wildcard_sd: :wildcardSd
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        sst: :Integer,
        sd: :String,
        sd_ranges: :'Array<SdRange>',
        wildcard_sd: :Boolean
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      %i[
        Snssai
        SnssaiExtension
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError, 'The input argument (attributes) must be a hash in `Core5g::ExtSnssai` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Core5g::ExtSnssai`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.sst = (attributes[:sst] if attributes.key?(:sst))

      self.sd = attributes[:sd] if attributes.key?(:sd)

      if attributes.key?(:sd_ranges) && (value = attributes[:sd_ranges]).is_a?(Array)
        self.sd_ranges = value
      end

      return unless attributes.key?(:wildcard_sd)

      self.wildcard_sd = attributes[:wildcard_sd]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = []
      invalid_properties.push('invalid value for "sst", sst cannot be nil.') if @sst.nil?

      invalid_properties.push('invalid value for "sst", must be smaller than or equal to 255.') if @sst > 255

      invalid_properties.push('invalid value for "sst", must be greater than or equal to 0.') if @sst.negative?

      pattern = /^[A-Fa-f0-9]{6}$/
      if !@sd.nil? && @sd !~ pattern
        invalid_properties.push("invalid value for \"sd\", must conform to the pattern #{pattern}.")
      end

      if !@sd_ranges.nil? && @sd_ranges.empty?
        invalid_properties.push('invalid value for "sd_ranges", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @sst.nil?
      return false if @sst > 255
      return false if @sst.negative?
      return false if !@sd.nil? && @sd !~ /^[A-Fa-f0-9]{6}$/
      return false if !@sd_ranges.nil? && @sd_ranges.empty?

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] sst Value to be assigned
    def sst=(sst)
      raise ArgumentError, 'sst cannot be nil' if sst.nil?

      raise ArgumentError, 'invalid value for "sst", must be smaller than or equal to 255.' if sst > 255

      raise ArgumentError, 'invalid value for "sst", must be greater than or equal to 0.' if sst.negative?

      @sst = sst
    end

    # Custom attribute writer method with validation
    # @param [Object] sd Value to be assigned
    def sd=(sd)
      raise ArgumentError, 'sd cannot be nil' if sd.nil?

      pattern = /^[A-Fa-f0-9]{6}$/
      unless sd&.match?(pattern)
        raise ArgumentError, "invalid value for \"sd\", must conform to the pattern #{pattern}."
      end

      @sd = sd
    end

    # Custom attribute writer method with validation
    # @param [Object] sd_ranges Value to be assigned
    def sd_ranges=(sd_ranges)
      raise ArgumentError, 'sd_ranges cannot be nil' if sd_ranges.nil?

      if sd_ranges.empty?
        raise ArgumentError, 'invalid value for "sd_ranges", number of items must be greater than or equal to 1.'
      end

      @sd_ranges = sd_ranges
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        sst == other.sst &&
        sd == other.sd &&
        sd_ranges == other.sd_ranges &&
        wildcard_sd == other.wildcard_sd
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sst, sd, sd_ranges, wildcard_sd].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash[key.to_s] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash[key.to_s] = attributes[attribute_map[key]].map do |v|
              _deserialize(::Regexp.last_match(1), v)
            end
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash[key.to_s] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Core5g.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
