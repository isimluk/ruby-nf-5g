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
  class RegistrationContextContainer
    attr_accessor :ue_context

    attr_accessor :local_time_zone

    attr_accessor :an_type

    attr_accessor :an_n2_ap_id

    attr_accessor :ran_node_id

    attr_accessor :initial_amf_name

    attr_accessor :user_location

    attr_accessor :rrc_est_cause

    attr_accessor :ue_context_request

    attr_accessor :an_n2_ipv4_addr

    attr_accessor :an_n2_ipv6_addr

    attr_accessor :allowed_nssai

    attr_accessor :configured_nssai

    attr_accessor :rejected_nssai_in_plmn

    attr_accessor :rejected_nssai_in_ta

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ue_context' => :'ueContext',
        :'local_time_zone' => :'localTimeZone',
        :'an_type' => :'anType',
        :'an_n2_ap_id' => :'anN2ApId',
        :'ran_node_id' => :'ranNodeId',
        :'initial_amf_name' => :'initialAmfName',
        :'user_location' => :'userLocation',
        :'rrc_est_cause' => :'rrcEstCause',
        :'ue_context_request' => :'ueContextRequest',
        :'an_n2_ipv4_addr' => :'anN2IPv4Addr',
        :'an_n2_ipv6_addr' => :'anN2IPv6Addr',
        :'allowed_nssai' => :'allowedNssai',
        :'configured_nssai' => :'configuredNssai',
        :'rejected_nssai_in_plmn' => :'rejectedNssaiInPlmn',
        :'rejected_nssai_in_ta' => :'rejectedNssaiInTa'
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
        :'local_time_zone' => :'String',
        :'an_type' => :'AccessType',
        :'an_n2_ap_id' => :'Integer',
        :'ran_node_id' => :'GlobalRanNodeId',
        :'initial_amf_name' => :'String',
        :'user_location' => :'UserLocation',
        :'rrc_est_cause' => :'String',
        :'ue_context_request' => :'Boolean',
        :'an_n2_ipv4_addr' => :'String',
        :'an_n2_ipv6_addr' => :'Ipv6Addr',
        :'allowed_nssai' => :'AllowedNssai',
        :'configured_nssai' => :'Array<ConfiguredSnssai>',
        :'rejected_nssai_in_plmn' => :'Array<Snssai>',
        :'rejected_nssai_in_ta' => :'Array<Snssai>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ran_node_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::RegistrationContextContainer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::RegistrationContextContainer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ue_context')
        self.ue_context = attributes[:'ue_context']
      else
        self.ue_context = nil
      end

      if attributes.key?(:'local_time_zone')
        self.local_time_zone = attributes[:'local_time_zone']
      end

      if attributes.key?(:'an_type')
        self.an_type = attributes[:'an_type']
      else
        self.an_type = nil
      end

      if attributes.key?(:'an_n2_ap_id')
        self.an_n2_ap_id = attributes[:'an_n2_ap_id']
      else
        self.an_n2_ap_id = nil
      end

      if attributes.key?(:'ran_node_id')
        self.ran_node_id = attributes[:'ran_node_id']
      else
        self.ran_node_id = nil
      end

      if attributes.key?(:'initial_amf_name')
        self.initial_amf_name = attributes[:'initial_amf_name']
      else
        self.initial_amf_name = nil
      end

      if attributes.key?(:'user_location')
        self.user_location = attributes[:'user_location']
      else
        self.user_location = nil
      end

      if attributes.key?(:'rrc_est_cause')
        self.rrc_est_cause = attributes[:'rrc_est_cause']
      end

      if attributes.key?(:'ue_context_request')
        self.ue_context_request = attributes[:'ue_context_request']
      else
        self.ue_context_request = false
      end

      if attributes.key?(:'an_n2_ipv4_addr')
        self.an_n2_ipv4_addr = attributes[:'an_n2_ipv4_addr']
      end

      if attributes.key?(:'an_n2_ipv6_addr')
        self.an_n2_ipv6_addr = attributes[:'an_n2_ipv6_addr']
      end

      if attributes.key?(:'allowed_nssai')
        self.allowed_nssai = attributes[:'allowed_nssai']
      end

      if attributes.key?(:'configured_nssai')
        if (value = attributes[:'configured_nssai']).is_a?(Array)
          self.configured_nssai = value
        end
      end

      if attributes.key?(:'rejected_nssai_in_plmn')
        if (value = attributes[:'rejected_nssai_in_plmn']).is_a?(Array)
          self.rejected_nssai_in_plmn = value
        end
      end

      if attributes.key?(:'rejected_nssai_in_ta')
        if (value = attributes[:'rejected_nssai_in_ta']).is_a?(Array)
          self.rejected_nssai_in_ta = value
        end
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

      if @an_type.nil?
        invalid_properties.push('invalid value for "an_type", an_type cannot be nil.')
      end

      if @an_n2_ap_id.nil?
        invalid_properties.push('invalid value for "an_n2_ap_id", an_n2_ap_id cannot be nil.')
      end

      if @initial_amf_name.nil?
        invalid_properties.push('invalid value for "initial_amf_name", initial_amf_name cannot be nil.')
      end

      if @user_location.nil?
        invalid_properties.push('invalid value for "user_location", user_location cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9a-fA-F]+$/)
      if !@rrc_est_cause.nil? && @rrc_est_cause !~ pattern
        invalid_properties.push("invalid value for \"rrc_est_cause\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$/)
      if !@an_n2_ipv4_addr.nil? && @an_n2_ipv4_addr !~ pattern
        invalid_properties.push("invalid value for \"an_n2_ipv4_addr\", must conform to the pattern #{pattern}.")
      end

      if !@configured_nssai.nil? && @configured_nssai.length < 1
        invalid_properties.push('invalid value for "configured_nssai", number of items must be greater than or equal to 1.')
      end

      if !@rejected_nssai_in_plmn.nil? && @rejected_nssai_in_plmn.length < 1
        invalid_properties.push('invalid value for "rejected_nssai_in_plmn", number of items must be greater than or equal to 1.')
      end

      if !@rejected_nssai_in_ta.nil? && @rejected_nssai_in_ta.length < 1
        invalid_properties.push('invalid value for "rejected_nssai_in_ta", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @ue_context.nil?
      return false if @an_type.nil?
      return false if @an_n2_ap_id.nil?
      return false if @initial_amf_name.nil?
      return false if @user_location.nil?
      return false if !@rrc_est_cause.nil? && @rrc_est_cause !~ Regexp.new(/^[0-9a-fA-F]+$/)
      return false if !@an_n2_ipv4_addr.nil? && @an_n2_ipv4_addr !~ Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$/)
      return false if !@configured_nssai.nil? && @configured_nssai.length < 1
      return false if !@rejected_nssai_in_plmn.nil? && @rejected_nssai_in_plmn.length < 1
      return false if !@rejected_nssai_in_ta.nil? && @rejected_nssai_in_ta.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] rrc_est_cause Value to be assigned
    def rrc_est_cause=(rrc_est_cause)
      if rrc_est_cause.nil?
        fail ArgumentError, 'rrc_est_cause cannot be nil'
      end

      pattern = Regexp.new(/^[0-9a-fA-F]+$/)
      if rrc_est_cause !~ pattern
        fail ArgumentError, "invalid value for \"rrc_est_cause\", must conform to the pattern #{pattern}."
      end

      @rrc_est_cause = rrc_est_cause
    end

    # Custom attribute writer method with validation
    # @param [Object] an_n2_ipv4_addr Value to be assigned
    def an_n2_ipv4_addr=(an_n2_ipv4_addr)
      if an_n2_ipv4_addr.nil?
        fail ArgumentError, 'an_n2_ipv4_addr cannot be nil'
      end

      pattern = Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$/)
      if an_n2_ipv4_addr !~ pattern
        fail ArgumentError, "invalid value for \"an_n2_ipv4_addr\", must conform to the pattern #{pattern}."
      end

      @an_n2_ipv4_addr = an_n2_ipv4_addr
    end

    # Custom attribute writer method with validation
    # @param [Object] configured_nssai Value to be assigned
    def configured_nssai=(configured_nssai)
      if configured_nssai.nil?
        fail ArgumentError, 'configured_nssai cannot be nil'
      end

      if configured_nssai.length < 1
        fail ArgumentError, 'invalid value for "configured_nssai", number of items must be greater than or equal to 1.'
      end

      @configured_nssai = configured_nssai
    end

    # Custom attribute writer method with validation
    # @param [Object] rejected_nssai_in_plmn Value to be assigned
    def rejected_nssai_in_plmn=(rejected_nssai_in_plmn)
      if rejected_nssai_in_plmn.nil?
        fail ArgumentError, 'rejected_nssai_in_plmn cannot be nil'
      end

      if rejected_nssai_in_plmn.length < 1
        fail ArgumentError, 'invalid value for "rejected_nssai_in_plmn", number of items must be greater than or equal to 1.'
      end

      @rejected_nssai_in_plmn = rejected_nssai_in_plmn
    end

    # Custom attribute writer method with validation
    # @param [Object] rejected_nssai_in_ta Value to be assigned
    def rejected_nssai_in_ta=(rejected_nssai_in_ta)
      if rejected_nssai_in_ta.nil?
        fail ArgumentError, 'rejected_nssai_in_ta cannot be nil'
      end

      if rejected_nssai_in_ta.length < 1
        fail ArgumentError, 'invalid value for "rejected_nssai_in_ta", number of items must be greater than or equal to 1.'
      end

      @rejected_nssai_in_ta = rejected_nssai_in_ta
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ue_context == o.ue_context &&
          local_time_zone == o.local_time_zone &&
          an_type == o.an_type &&
          an_n2_ap_id == o.an_n2_ap_id &&
          ran_node_id == o.ran_node_id &&
          initial_amf_name == o.initial_amf_name &&
          user_location == o.user_location &&
          rrc_est_cause == o.rrc_est_cause &&
          ue_context_request == o.ue_context_request &&
          an_n2_ipv4_addr == o.an_n2_ipv4_addr &&
          an_n2_ipv6_addr == o.an_n2_ipv6_addr &&
          allowed_nssai == o.allowed_nssai &&
          configured_nssai == o.configured_nssai &&
          rejected_nssai_in_plmn == o.rejected_nssai_in_plmn &&
          rejected_nssai_in_ta == o.rejected_nssai_in_ta
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ue_context, local_time_zone, an_type, an_n2_ap_id, ran_node_id, initial_amf_name, user_location, rrc_est_cause, ue_context_request, an_n2_ipv4_addr, an_n2_ipv6_addr, allowed_nssai, configured_nssai, rejected_nssai_in_plmn, rejected_nssai_in_ta].hash
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