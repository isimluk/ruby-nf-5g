=begin
#Namf_Communication

#AMF Communication Service © 2019, 3GPP Organizational Partners (ARIB, ATIS, CCSA, ETSI, TSDSI, TTA, TTC). All rights reserved. 

The version of the OpenAPI document: 1.0.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'date'
require 'time'

module OpenapiClient
  class UeContextCreatedData
    attr_accessor :ue_context

    attr_accessor :target_to_source_data

    attr_accessor :pdu_session_list

    attr_accessor :failed_session_list

    attr_accessor :supported_features

    attr_accessor :pcf_reselected_ind

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ue_context' => :'ueContext',
        :'target_to_source_data' => :'targetToSourceData',
        :'pdu_session_list' => :'pduSessionList',
        :'failed_session_list' => :'failedSessionList',
        :'supported_features' => :'supportedFeatures',
        :'pcf_reselected_ind' => :'pcfReselectedInd'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ue_context' => :'UeContext',
        :'target_to_source_data' => :'N2InfoContent',
        :'pdu_session_list' => :'Array<N2SmInformation>',
        :'failed_session_list' => :'Array<N2SmInformation>',
        :'supported_features' => :'Object',
        :'pcf_reselected_ind' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::UeContextCreatedData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::UeContextCreatedData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ue_context')
        self.ue_context = attributes[:'ue_context']
      else
        self.ue_context = nil
      end

      if attributes.key?(:'target_to_source_data')
        self.target_to_source_data = attributes[:'target_to_source_data']
      else
        self.target_to_source_data = nil
      end

      if attributes.key?(:'pdu_session_list')
        if (value = attributes[:'pdu_session_list']).is_a?(Array)
          self.pdu_session_list = value
        end
      else
        self.pdu_session_list = nil
      end

      if attributes.key?(:'failed_session_list')
        if (value = attributes[:'failed_session_list']).is_a?(Array)
          self.failed_session_list = value
        end
      end

      if attributes.key?(:'supported_features')
        self.supported_features = attributes[:'supported_features']
      end

      if attributes.key?(:'pcf_reselected_ind')
        self.pcf_reselected_ind = attributes[:'pcf_reselected_ind']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @ue_context.nil?
        invalid_properties.push('invalid value for "ue_context", ue_context cannot be nil.')
      end

      if @target_to_source_data.nil?
        invalid_properties.push('invalid value for "target_to_source_data", target_to_source_data cannot be nil.')
      end

      if @pdu_session_list.nil?
        invalid_properties.push('invalid value for "pdu_session_list", pdu_session_list cannot be nil.')
      end

      if @pdu_session_list.length < 1
        invalid_properties.push('invalid value for "pdu_session_list", number of items must be greater than or equal to 1.')
      end

      if !@failed_session_list.nil? && @failed_session_list.length < 1
        invalid_properties.push('invalid value for "failed_session_list", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @ue_context.nil?
      return false if @target_to_source_data.nil?
      return false if @pdu_session_list.nil?
      return false if @pdu_session_list.length < 1
      return false if !@failed_session_list.nil? && @failed_session_list.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] pdu_session_list Value to be assigned
    def pdu_session_list=(pdu_session_list)
      if pdu_session_list.nil?
        fail ArgumentError, 'pdu_session_list cannot be nil'
      end

      if pdu_session_list.length < 1
        fail ArgumentError, 'invalid value for "pdu_session_list", number of items must be greater than or equal to 1.'
      end

      @pdu_session_list = pdu_session_list
    end

    # Custom attribute writer method with validation
    # @param [Object] failed_session_list Value to be assigned
    def failed_session_list=(failed_session_list)
      if failed_session_list.nil?
        fail ArgumentError, 'failed_session_list cannot be nil'
      end

      if failed_session_list.length < 1
        fail ArgumentError, 'invalid value for "failed_session_list", number of items must be greater than or equal to 1.'
      end

      @failed_session_list = failed_session_list
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ue_context == o.ue_context &&
          target_to_source_data == o.target_to_source_data &&
          pdu_session_list == o.pdu_session_list &&
          failed_session_list == o.failed_session_list &&
          supported_features == o.supported_features &&
          pcf_reselected_ind == o.pcf_reselected_ind
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ue_context, target_to_source_data, pdu_session_list, failed_session_list, supported_features, pcf_reselected_ind].hash
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
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
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
        value = self.send(attr)
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