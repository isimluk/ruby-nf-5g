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
  # Contains the ECGI (E-UTRAN Cell Global Identity), as described in 3GPP 23.003
  class Ecgi
    attr_accessor :plmn_id

    # 28-bit string identifying an E-UTRA Cell Id as specified in clause 9.3.1.9 of  3GPP TS 38.413, in hexadecimal representation. Each character in the string shall take a  value of \"0\" to \"9\", \"a\" to \"f\" or \"A\" to \"F\" and shall represent 4 bits. The most  significant character representing the 4 most significant bits of the Cell Id shall appear  first in the string, and the character representing the 4 least significant bit of the  Cell Id shall appear last in the string.
    attr_accessor :eutra_cell_id

    # This represents the Network Identifier, which together with a PLMN ID is used to identify an SNPN (see 3GPP TS 23.003 and 3GPP TS 23.501 clause 5.30.2.1).
    attr_accessor :nid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        plmn_id: :plmnId,
        eutra_cell_id: :eutraCellId,
        nid: :nid
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        plmn_id: :PlmnId,
        eutra_cell_id: :String,
        nid: :String
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
        raise ArgumentError, 'The input argument (attributes) must be a hash in `Core5g::Ecgi` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Core5g::Ecgi`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.plmn_id = (attributes[:plmn_id] if attributes.key?(:plmn_id))

      self.eutra_cell_id = (attributes[:eutra_cell_id] if attributes.key?(:eutra_cell_id))

      return unless attributes.key?(:nid)

      self.nid = attributes[:nid]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = []
      invalid_properties.push('invalid value for "plmn_id", plmn_id cannot be nil.') if @plmn_id.nil?

      invalid_properties.push('invalid value for "eutra_cell_id", eutra_cell_id cannot be nil.') if @eutra_cell_id.nil?

      pattern = /^[A-Fa-f0-9]{7}$/
      unless @eutra_cell_id&.match?(pattern)
        invalid_properties.push("invalid value for \"eutra_cell_id\", must conform to the pattern #{pattern}.")
      end

      pattern = /^[A-Fa-f0-9]{11}$/
      if !@nid.nil? && @nid !~ pattern
        invalid_properties.push("invalid value for \"nid\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @plmn_id.nil?
      return false if @eutra_cell_id.nil?
      return false unless @eutra_cell_id&.match?(/^[A-Fa-f0-9]{7}$/)
      return false if !@nid.nil? && @nid !~ /^[A-Fa-f0-9]{11}$/

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] eutra_cell_id Value to be assigned
    def eutra_cell_id=(eutra_cell_id)
      raise ArgumentError, 'eutra_cell_id cannot be nil' if eutra_cell_id.nil?

      pattern = /^[A-Fa-f0-9]{7}$/
      unless eutra_cell_id&.match?(pattern)
        raise ArgumentError, "invalid value for \"eutra_cell_id\", must conform to the pattern #{pattern}."
      end

      @eutra_cell_id = eutra_cell_id
    end

    # Custom attribute writer method with validation
    # @param [Object] nid Value to be assigned
    def nid=(nid)
      raise ArgumentError, 'nid cannot be nil' if nid.nil?

      pattern = /^[A-Fa-f0-9]{11}$/
      unless nid&.match?(pattern)
        raise ArgumentError, "invalid value for \"nid\", must conform to the pattern #{pattern}."
      end

      @nid = nid
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        plmn_id == other.plmn_id &&
        eutra_cell_id == other.eutra_cell_id &&
        nid == other.nid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [plmn_id, eutra_cell_id, nid].hash
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
