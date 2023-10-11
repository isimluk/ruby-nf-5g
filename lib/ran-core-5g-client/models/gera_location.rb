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
  # Exactly one of cgi, sai or lai shall be present.
  class GeraLocation
    # Location number within the PLMN. See 3GPP TS 23.003, clause 4.5.
    attr_accessor :location_number

    attr_accessor :cgi, :rai, :sai, :lai

    # VLR number. See 3GPP TS 23.003 clause 5.1.
    attr_accessor :vlr_number

    # MSC number. See 3GPP TS 23.003 clause 5.1.
    attr_accessor :msc_number

    # The value represents the elapsed time in minutes since the last network contact of the mobile station. Value \"0\" indicates that the location information was obtained after a successful paging procedure for  Active Location Retrieval when the UE is in idle mode or after a successful location reporting procedure the UE is in connected mode. Any other value than \"0\" indicates that the location information is the last known one. See 3GPP TS 29.002 clause 17.7.8.
    attr_accessor :age_of_location_information

    # string with format 'date-time' as defined in OpenAPI.
    attr_accessor :ue_location_timestamp

    # Refer to geographical Information.See 3GPP TS 23.032 clause 7.3.2. Only the description of an ellipsoid point with uncertainty circle is allowed to be used.
    attr_accessor :geographical_information

    # Refers to Calling Geodetic Location.See ITU-T Recommendation Q.763 (1999) clause 3.88.2.  Only the description of an ellipsoid point with uncertainty circle is allowed to be used.
    attr_accessor :geodetic_information

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        location_number: :locationNumber,
        cgi: :cgi,
        rai: :rai,
        sai: :sai,
        lai: :lai,
        vlr_number: :vlrNumber,
        msc_number: :mscNumber,
        age_of_location_information: :ageOfLocationInformation,
        ue_location_timestamp: :ueLocationTimestamp,
        geographical_information: :geographicalInformation,
        geodetic_information: :geodeticInformation
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        location_number: :String,
        cgi: :CellGlobalId,
        rai: :RoutingAreaId,
        sai: :ServiceAreaId,
        lai: :LocationAreaId,
        vlr_number: :String,
        msc_number: :String,
        age_of_location_information: :Integer,
        ue_location_timestamp: :Time,
        geographical_information: :String,
        geodetic_information: :String
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError,
              'The input argument (attributes) must be a hash in `Core5g::GeraLocation` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Core5g::GeraLocation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.location_number = attributes[:location_number] if attributes.key?(:location_number)

      self.cgi = attributes[:cgi] if attributes.key?(:cgi)

      self.rai = attributes[:rai] if attributes.key?(:rai)

      self.sai = attributes[:sai] if attributes.key?(:sai)

      self.lai = attributes[:lai] if attributes.key?(:lai)

      self.vlr_number = attributes[:vlr_number] if attributes.key?(:vlr_number)

      self.msc_number = attributes[:msc_number] if attributes.key?(:msc_number)

      if attributes.key?(:age_of_location_information)
        self.age_of_location_information = attributes[:age_of_location_information]
      end

      self.ue_location_timestamp = attributes[:ue_location_timestamp] if attributes.key?(:ue_location_timestamp)

      if attributes.key?(:geographical_information)
        self.geographical_information = attributes[:geographical_information]
      end

      return unless attributes.key?(:geodetic_information)

      self.geodetic_information = attributes[:geodetic_information]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = []
      if !@age_of_location_information.nil? && @age_of_location_information > 32_767
        invalid_properties.push('invalid value for "age_of_location_information", must be smaller than or equal to 32767.')
      end

      if !@age_of_location_information.nil? && @age_of_location_information.negative?
        invalid_properties.push('invalid value for "age_of_location_information", must be greater than or equal to 0.')
      end

      pattern = /^[0-9A-F]{16}$/
      if !@geographical_information.nil? && @geographical_information !~ pattern
        invalid_properties.push("invalid value for \"geographical_information\", must conform to the pattern #{pattern}.")
      end

      pattern = /^[0-9A-F]{20}$/
      if !@geodetic_information.nil? && @geodetic_information !~ pattern
        invalid_properties.push("invalid value for \"geodetic_information\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@age_of_location_information.nil? && @age_of_location_information > 32_767
      return false if !@age_of_location_information.nil? && @age_of_location_information.negative?
      return false if !@geographical_information.nil? && @geographical_information !~ /^[0-9A-F]{16}$/
      return false if !@geodetic_information.nil? && @geodetic_information !~ /^[0-9A-F]{20}$/

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] age_of_location_information Value to be assigned
    def age_of_location_information=(age_of_location_information)
      raise ArgumentError, 'age_of_location_information cannot be nil' if age_of_location_information.nil?

      if age_of_location_information > 32_767
        raise ArgumentError, 'invalid value for "age_of_location_information", must be smaller than or equal to 32767.'
      end

      if age_of_location_information.negative?
        raise ArgumentError, 'invalid value for "age_of_location_information", must be greater than or equal to 0.'
      end

      @age_of_location_information = age_of_location_information
    end

    # Custom attribute writer method with validation
    # @param [Object] geographical_information Value to be assigned
    def geographical_information=(geographical_information)
      raise ArgumentError, 'geographical_information cannot be nil' if geographical_information.nil?

      pattern = /^[0-9A-F]{16}$/
      unless geographical_information&.match?(pattern)
        raise ArgumentError, "invalid value for \"geographical_information\", must conform to the pattern #{pattern}."
      end

      @geographical_information = geographical_information
    end

    # Custom attribute writer method with validation
    # @param [Object] geodetic_information Value to be assigned
    def geodetic_information=(geodetic_information)
      raise ArgumentError, 'geodetic_information cannot be nil' if geodetic_information.nil?

      pattern = /^[0-9A-F]{20}$/
      unless geodetic_information&.match?(pattern)
        raise ArgumentError, "invalid value for \"geodetic_information\", must conform to the pattern #{pattern}."
      end

      @geodetic_information = geodetic_information
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        location_number == other.location_number &&
        cgi == other.cgi &&
        rai == other.rai &&
        sai == other.sai &&
        lai == other.lai &&
        vlr_number == other.vlr_number &&
        msc_number == other.msc_number &&
        age_of_location_information == other.age_of_location_information &&
        ue_location_timestamp == other.ue_location_timestamp &&
        geographical_information == other.geographical_information &&
        geodetic_information == other.geodetic_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [location_number, cgi, rai, sai, lai, vlr_number, msc_number, age_of_location_information, ue_location_timestamp,
       geographical_information, geodetic_information].hash
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