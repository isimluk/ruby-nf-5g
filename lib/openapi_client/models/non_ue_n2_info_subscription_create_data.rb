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
  class NonUeN2InfoSubscriptionCreateData
    attr_accessor :global_ran_node_list, :an_type_list, :n2_information_class, :n2_notify_callback_uri, :nf_id,
                  :supported_features

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        global_ran_node_list: :globalRanNodeList,
        an_type_list: :anTypeList,
        n2_information_class: :n2InformationClass,
        n2_notify_callback_uri: :n2NotifyCallbackUri,
        nf_id: :nfId,
        supported_features: :supportedFeatures
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        global_ran_node_list: :'Array<GlobalRanNodeId>',
        an_type_list: :'Array<AccessType>',
        n2_information_class: :N2InformationClass,
        n2_notify_callback_uri: :String,
        nf_id: :String,
        supported_features: :String
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
              'The input argument (attributes) must be a hash in `OpenapiClient::NonUeN2InfoSubscriptionCreateData` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `OpenapiClient::NonUeN2InfoSubscriptionCreateData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      if attributes.key?(:global_ran_node_list) && (value = attributes[:global_ran_node_list]).is_a?(Array)
        self.global_ran_node_list = value
      end

      if attributes.key?(:an_type_list) && (value = attributes[:an_type_list]).is_a?(Array)
        self.an_type_list = value
      end

      self.n2_information_class = (attributes[:n2_information_class] if attributes.key?(:n2_information_class))

      self.n2_notify_callback_uri = (attributes[:n2_notify_callback_uri] if attributes.key?(:n2_notify_callback_uri))

      self.nf_id = attributes[:nf_id] if attributes.key?(:nf_id)

      return unless attributes.key?(:supported_features)

      self.supported_features = attributes[:supported_features]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = []
      if !@global_ran_node_list.nil? && @global_ran_node_list.empty?
        invalid_properties.push('invalid value for "global_ran_node_list", number of items must be greater than or equal to 1.')
      end

      if !@an_type_list.nil? && @an_type_list.empty?
        invalid_properties.push('invalid value for "an_type_list", number of items must be greater than or equal to 1.')
      end

      if @n2_information_class.nil?
        invalid_properties.push('invalid value for "n2_information_class", n2_information_class cannot be nil.')
      end

      if @n2_notify_callback_uri.nil?
        invalid_properties.push('invalid value for "n2_notify_callback_uri", n2_notify_callback_uri cannot be nil.')
      end

      pattern = /^[A-Fa-f0-9]*$/
      if !@supported_features.nil? && @supported_features !~ pattern
        invalid_properties.push("invalid value for \"supported_features\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@global_ran_node_list.nil? && @global_ran_node_list.empty?
      return false if !@an_type_list.nil? && @an_type_list.empty?
      return false if @n2_information_class.nil?
      return false if @n2_notify_callback_uri.nil?
      return false if !@supported_features.nil? && @supported_features !~ /^[A-Fa-f0-9]*$/

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] global_ran_node_list Value to be assigned
    def global_ran_node_list=(global_ran_node_list)
      raise ArgumentError, 'global_ran_node_list cannot be nil' if global_ran_node_list.nil?

      if global_ran_node_list.empty?
        raise ArgumentError,
              'invalid value for "global_ran_node_list", number of items must be greater than or equal to 1.'
      end

      @global_ran_node_list = global_ran_node_list
    end

    # Custom attribute writer method with validation
    # @param [Object] an_type_list Value to be assigned
    def an_type_list=(an_type_list)
      raise ArgumentError, 'an_type_list cannot be nil' if an_type_list.nil?

      if an_type_list.empty?
        raise ArgumentError, 'invalid value for "an_type_list", number of items must be greater than or equal to 1.'
      end

      @an_type_list = an_type_list
    end

    # Custom attribute writer method with validation
    # @param [Object] supported_features Value to be assigned
    def supported_features=(supported_features)
      raise ArgumentError, 'supported_features cannot be nil' if supported_features.nil?

      pattern = /^[A-Fa-f0-9]*$/
      unless supported_features&.match?(pattern)
        raise ArgumentError, "invalid value for \"supported_features\", must conform to the pattern #{pattern}."
      end

      @supported_features = supported_features
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        global_ran_node_list == other.global_ran_node_list &&
        an_type_list == other.an_type_list &&
        n2_information_class == other.n2_information_class &&
        n2_notify_callback_uri == other.n2_notify_callback_uri &&
        nf_id == other.nf_id &&
        supported_features == other.supported_features
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [global_ran_node_list, an_type_list, n2_information_class, n2_notify_callback_uri, nf_id, supported_features].hash
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
