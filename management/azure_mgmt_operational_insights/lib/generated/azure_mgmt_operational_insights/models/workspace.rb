# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::OperationalInsights
  module Models
    #
    # The top level Workspace resource container.
    #
    class Workspace < Resource

      include MsRestAzure

      # @return [EntityStatus] The provisioning state of the workspace.
      # Possible values include: 'Creating', 'Succeeded', 'Failed', 'Canceled',
      # 'Deleting', 'ProvisioningAccount'
      attr_accessor :provisioning_state

      # @return [String] The source of the workspace.  Source defines where the
      # workspace was created. 'Azure' implies it was created in Azure.
      # 'External' implies it was created via the Operational Insights Portal.
      # This value is set on the service side and read-only on the client side.
      attr_accessor :source

      # @return [String] The ID associated with the workspace.  Setting this
      # value at creation time allows the workspace being created to be linked
      # to an existing workspace.
      attr_accessor :customer_id

      # @return [String] The URL of the Operational Insights portal for this
      # workspace.  This value is set on the service side and read-only on the
      # client side.
      attr_accessor :portal_url

      # @return [Sku] The SKU of the workspace.
      attr_accessor :sku

      # @return [Integer] The workspace data retention in days. -1 means
      # Unlimited retention for the Unlimited Sku. 730 days is the maximum
      # allowed for all other Skus.
      attr_accessor :retention_in_days

      # @return [String] The ETag of the workspace.
      attr_accessor :e_tag


      #
      # Mapper for Workspace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Workspace',
          type: {
            name: 'Composite',
            class_name: 'Workspace',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              source: {
                required: false,
                serialized_name: 'properties.source',
                type: {
                  name: 'String'
                }
              },
              customer_id: {
                required: false,
                serialized_name: 'properties.customerId',
                type: {
                  name: 'String'
                }
              },
              portal_url: {
                required: false,
                serialized_name: 'properties.portalUrl',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              retention_in_days: {
                required: false,
                serialized_name: 'properties.retentionInDays',
                constraints: {
                  InclusiveMaximum: 730,
                  InclusiveMinimum: -1
                },
                type: {
                  name: 'Number'
                }
              },
              e_tag: {
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
