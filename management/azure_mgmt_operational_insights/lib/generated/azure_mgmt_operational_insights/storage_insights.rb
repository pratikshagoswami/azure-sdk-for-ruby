# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::OperationalInsights
  #
  # Operational Insights Client
  #
  class StorageInsights
    include MsRestAzure

    #
    # Creates and initializes a new instance of the StorageInsights class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [OperationalInsightsManagementClient] reference to the OperationalInsightsManagementClient
    attr_reader :client

    #
    # Create or update a storage insight.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that will contain
    # the storageInsightsConfigs resource
    # @param storage_insight_name [String] Name of the storageInsightsConfigs
    # resource
    # @param parameters [StorageInsight] The parameters required to create or
    # update a storage insight.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StorageInsight] operation results.
    #
    def create_or_update(resource_group_name, workspace_name, storage_insight_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, workspace_name, storage_insight_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or update a storage insight.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that will contain
    # the storageInsightsConfigs resource
    # @param storage_insight_name [String] Name of the storageInsightsConfigs
    # resource
    # @param parameters [StorageInsight] The parameters required to create or
    # update a storage insight.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, workspace_name, storage_insight_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, workspace_name, storage_insight_name, parameters, custom_headers).value!
    end

    #
    # Create or update a storage insight.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that will contain
    # the storageInsightsConfigs resource
    # @param storage_insight_name [String] Name of the storageInsightsConfigs
    # resource
    # @param parameters [StorageInsight] The parameters required to create or
    # update a storage insight.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, workspace_name, storage_insight_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'storage_insight_name is nil' if storage_insight_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      api_version = '2015-03-20'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::OperationalInsights::Models::StorageInsight.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/storageInsightConfigs/{storageInsightName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'storageInsightName' => storage_insight_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::OperationalInsights::Models::StorageInsight.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::OperationalInsights::Models::StorageInsight.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a storage insight instance.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that contains the
    # storageInsightsConfigs resource
    # @param storage_insight_name [String] Name of the storageInsightsConfigs
    # resource
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StorageInsight] operation results.
    #
    def get(resource_group_name, workspace_name, storage_insight_name, custom_headers = nil)
      response = get_async(resource_group_name, workspace_name, storage_insight_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a storage insight instance.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that contains the
    # storageInsightsConfigs resource
    # @param storage_insight_name [String] Name of the storageInsightsConfigs
    # resource
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, workspace_name, storage_insight_name, custom_headers = nil)
      get_async(resource_group_name, workspace_name, storage_insight_name, custom_headers).value!
    end

    #
    # Gets a storage insight instance.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that contains the
    # storageInsightsConfigs resource
    # @param storage_insight_name [String] Name of the storageInsightsConfigs
    # resource
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, workspace_name, storage_insight_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'storage_insight_name is nil' if storage_insight_name.nil?
      api_version = '2015-03-20'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/storageInsightConfigs/{storageInsightName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'storageInsightName' => storage_insight_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::OperationalInsights::Models::StorageInsight.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes a storageInsightsConfigs resource
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that contains the
    # storageInsightsConfigs resource
    # @param storage_insight_name [String] Name of the storageInsightsConfigs
    # resource
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, workspace_name, storage_insight_name, custom_headers = nil)
      response = delete_async(resource_group_name, workspace_name, storage_insight_name, custom_headers).value!
      nil
    end

    #
    # Deletes a storageInsightsConfigs resource
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that contains the
    # storageInsightsConfigs resource
    # @param storage_insight_name [String] Name of the storageInsightsConfigs
    # resource
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, workspace_name, storage_insight_name, custom_headers = nil)
      delete_async(resource_group_name, workspace_name, storage_insight_name, custom_headers).value!
    end

    #
    # Deletes a storageInsightsConfigs resource
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that contains the
    # storageInsightsConfigs resource
    # @param storage_insight_name [String] Name of the storageInsightsConfigs
    # resource
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, workspace_name, storage_insight_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'storage_insight_name is nil' if storage_insight_name.nil?
      api_version = '2015-03-20'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/storageInsightConfigs/{storageInsightName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'storageInsightName' => storage_insight_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Lists the storage insight instances within a workspace
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that will contain
    # the storageInsightsConfigs resource
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<StorageInsight>] operation results.
    #
    def list_by_workspace(resource_group_name, workspace_name, custom_headers = nil)
      first_page = list_by_workspace_as_lazy(resource_group_name, workspace_name, custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the storage insight instances within a workspace
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that will contain
    # the storageInsightsConfigs resource
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_workspace_with_http_info(resource_group_name, workspace_name, custom_headers = nil)
      list_by_workspace_async(resource_group_name, workspace_name, custom_headers).value!
    end

    #
    # Lists the storage insight instances within a workspace
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that will contain
    # the storageInsightsConfigs resource
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_workspace_async(resource_group_name, workspace_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      api_version = '2015-03-20'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/storageInsightConfigs'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::OperationalInsights::Models::StorageInsightListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the storage insight instances within a workspace
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StorageInsightListResult] operation results.
    #
    def list_by_workspace_next(next_page_link, custom_headers = nil)
      response = list_by_workspace_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the storage insight instances within a workspace
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_workspace_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_workspace_next_async(next_page_link, custom_headers).value!
    end

    #
    # Lists the storage insight instances within a workspace
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_workspace_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::OperationalInsights::Models::StorageInsightListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the storage insight instances within a workspace
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Log Analytics Workspace name that will contain
    # the storageInsightsConfigs resource
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [StorageInsightListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_workspace_as_lazy(resource_group_name, workspace_name, custom_headers = nil)
      response = list_by_workspace_async(resource_group_name, workspace_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_workspace_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
