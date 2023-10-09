=begin
#Namf_Communication

#AMF Communication Service © 2019, 3GPP Organizational Partners (ARIB, ATIS, CCSA, ETSI, TSDSI, TTA, TTC). All rights reserved. 

The version of the OpenAPI document: 1.0.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module OpenapiClient
  class IndividualSubscriptionDocumentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Namf_Communication AMF Status Change Subscribe Modify service Operation
    # @param subscription_id [String] AMF Status Change Subscription Identifier
    # @param subscription_data [SubscriptionData] 
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionData]
    def a_mf_status_change_subscribe_modfy(subscription_id, subscription_data, opts = {})
      data, _status_code, _headers = a_mf_status_change_subscribe_modfy_with_http_info(subscription_id, subscription_data, opts)
      data
    end

    # Namf_Communication AMF Status Change Subscribe Modify service Operation
    # @param subscription_id [String] AMF Status Change Subscription Identifier
    # @param subscription_data [SubscriptionData] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionData, Integer, Hash)>] SubscriptionData data, response status code and response headers
    def a_mf_status_change_subscribe_modfy_with_http_info(subscription_id, subscription_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IndividualSubscriptionDocumentApi.a_mf_status_change_subscribe_modfy ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling IndividualSubscriptionDocumentApi.a_mf_status_change_subscribe_modfy"
      end
      # verify the required parameter 'subscription_data' is set
      if @api_client.config.client_side_validation && subscription_data.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_data' when calling IndividualSubscriptionDocumentApi.a_mf_status_change_subscribe_modfy"
      end
      # resource path
      local_var_path = '/subscriptions/{subscriptionId}'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(subscription_data)

      # return_type
      return_type = opts[:debug_return_type] || 'SubscriptionData'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"IndividualSubscriptionDocumentApi.a_mf_status_change_subscribe_modfy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IndividualSubscriptionDocumentApi#a_mf_status_change_subscribe_modfy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Namf_Communication AMF Status Change UnSubscribe service Operation
    # @param subscription_id [String] AMF Status Change Subscription Identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def a_mf_status_change_un_subscribe(subscription_id, opts = {})
      a_mf_status_change_un_subscribe_with_http_info(subscription_id, opts)
      nil
    end

    # Namf_Communication AMF Status Change UnSubscribe service Operation
    # @param subscription_id [String] AMF Status Change Subscription Identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def a_mf_status_change_un_subscribe_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IndividualSubscriptionDocumentApi.a_mf_status_change_un_subscribe ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling IndividualSubscriptionDocumentApi.a_mf_status_change_un_subscribe"
      end
      # resource path
      local_var_path = '/subscriptions/{subscriptionId}'.sub('{' + 'subscriptionId' + '}', CGI.escape(subscription_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"IndividualSubscriptionDocumentApi.a_mf_status_change_un_subscribe",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IndividualSubscriptionDocumentApi#a_mf_status_change_un_subscribe\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
