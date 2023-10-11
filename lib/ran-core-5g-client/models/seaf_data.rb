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

module Core5g
  class SeafData
    attr_accessor :ng_ksi, :key_amf, :nh, :ncc, :key_amf_change_ind, :key_amf_h_derivation_ind

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        ng_ksi: :ngKsi,
        key_amf: :keyAmf,
        nh: :nh,
        ncc: :ncc,
        key_amf_change_ind: :keyAmfChangeInd,
        key_amf_h_derivation_ind: :keyAmfHDerivationInd
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        ng_ksi: :NgKsi,
        key_amf: :KeyAmf,
        nh: :String,
        ncc: :Integer,
        key_amf_change_ind: :Boolean,
        key_amf_h_derivation_ind: :Boolean
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
        raise ArgumentError, 'The input argument (attributes) must be a hash in `Core5g::SeafData` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Core5g::SeafData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.ng_ksi = (attributes[:ng_ksi] if attributes.key?(:ng_ksi))

      self.key_amf = (attributes[:key_amf] if attributes.key?(:key_amf))

      self.nh = attributes[:nh] if attributes.key?(:nh)

      self.ncc = attributes[:ncc] if attributes.key?(:ncc)

      self.key_amf_change_ind = attributes[:key_amf_change_ind] if attributes.key?(:key_amf_change_ind)

      return unless attributes.key?(:key_amf_h_derivation_ind)

      self.key_amf_h_derivation_ind = attributes[:key_amf_h_derivation_ind]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = []
      invalid_properties.push('invalid value for "ng_ksi", ng_ksi cannot be nil.') if @ng_ksi.nil?

      invalid_properties.push('invalid value for "key_amf", key_amf cannot be nil.') if @key_amf.nil?

      pattern = /^[A-Fa-f0-9]+$/
      if !@nh.nil? && @nh !~ pattern
        invalid_properties.push("invalid value for \"nh\", must conform to the pattern #{pattern}.")
      end

      invalid_properties.push('invalid value for "ncc", must be smaller than or equal to 7.') if !@ncc.nil? && @ncc > 7

      if !@ncc.nil? && @ncc.negative?
        invalid_properties.push('invalid value for "ncc", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @ng_ksi.nil?
      return false if @key_amf.nil?
      return false if !@nh.nil? && @nh !~ /^[A-Fa-f0-9]+$/
      return false if !@ncc.nil? && @ncc > 7
      return false if !@ncc.nil? && @ncc.negative?

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] nh Value to be assigned
    def nh=(nh)
      raise ArgumentError, 'nh cannot be nil' if nh.nil?

      pattern = /^[A-Fa-f0-9]+$/
      unless nh&.match?(pattern)
        raise ArgumentError,
              "invalid value for \"nh\", must conform to the pattern #{pattern}."
      end

      @nh = nh
    end

    # Custom attribute writer method with validation
    # @param [Object] ncc Value to be assigned
    def ncc=(ncc)
      raise ArgumentError, 'ncc cannot be nil' if ncc.nil?

      raise ArgumentError, 'invalid value for "ncc", must be smaller than or equal to 7.' if ncc > 7

      raise ArgumentError, 'invalid value for "ncc", must be greater than or equal to 0.' if ncc.negative?

      @ncc = ncc
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        ng_ksi == other.ng_ksi &&
        key_amf == other.key_amf &&
        nh == other.nh &&
        ncc == other.ncc &&
        key_amf_change_ind == other.key_amf_change_ind &&
        key_amf_h_derivation_ind == other.key_amf_h_derivation_ind
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ng_ksi, key_amf, nh, ncc, key_amf_change_ind, key_amf_h_derivation_ind].hash
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