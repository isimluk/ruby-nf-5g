# frozen_string_literal: true

# #Namf_Communication
#
# AMF Communication Service © 2019, 3GPP Organizational Partners (ARIB, ATIS, CCSA, ETSI, TSDSI, TTA, TTC). All rights reserved.
#
# The version of the OpenAPI document: 1.0.2
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 7.1.0-SNAPSHOT
#

require 'date'
require 'time'

module OpenapiClient
  class PWSResponseData
    attr_accessor :ngap_message_type, :serial_number, :message_identifier, :unknown_tai_list

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        ngap_message_type: :ngapMessageType,
        serial_number: :serialNumber,
        message_identifier: :messageIdentifier,
        unknown_tai_list: :unknownTaiList
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        ngap_message_type: :Object,
        serial_number: :Object,
        message_identifier: :Integer,
        unknown_tai_list: :'Array<Object>'
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
              'The input argument (attributes) must be a hash in `OpenapiClient::PWSResponseData` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `OpenapiClient::PWSResponseData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.ngap_message_type = (attributes[:ngap_message_type] if attributes.key?(:ngap_message_type))

      self.serial_number = (attributes[:serial_number] if attributes.key?(:serial_number))

      self.message_identifier = (attributes[:message_identifier] if attributes.key?(:message_identifier))

      return unless attributes.key?(:unknown_tai_list)
      return unless (value = attributes[:unknown_tai_list]).is_a?(Array)

      self.unknown_tai_list = value
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = []
      if @ngap_message_type.nil?
        invalid_properties.push('invalid value for "ngap_message_type", ngap_message_type cannot be nil.')
      end

      invalid_properties.push('invalid value for "serial_number", serial_number cannot be nil.') if @serial_number.nil?

      if @message_identifier.nil?
        invalid_properties.push('invalid value for "message_identifier", message_identifier cannot be nil.')
      end

      if !@unknown_tai_list.nil? && @unknown_tai_list.empty?
        invalid_properties.push('invalid value for "unknown_tai_list", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @ngap_message_type.nil?
      return false if @serial_number.nil?
      return false if @message_identifier.nil?
      return false if !@unknown_tai_list.nil? && @unknown_tai_list.empty?

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] unknown_tai_list Value to be assigned
    def unknown_tai_list=(unknown_tai_list)
      raise ArgumentError, 'unknown_tai_list cannot be nil' if unknown_tai_list.nil?

      if unknown_tai_list.empty?
        raise ArgumentError, 'invalid value for "unknown_tai_list", number of items must be greater than or equal to 1.'
      end

      @unknown_tai_list = unknown_tai_list
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        ngap_message_type == other.ngap_message_type &&
        serial_number == other.serial_number &&
        message_identifier == other.message_identifier &&
        unknown_tai_list == other.unknown_tai_list
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ngap_message_type, serial_number, message_identifier, unknown_tai_list].hash
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
        klass = OpenapiClient.const_get(type)
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
