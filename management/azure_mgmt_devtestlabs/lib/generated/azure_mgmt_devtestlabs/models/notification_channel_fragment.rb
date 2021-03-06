# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # A notification.
    #
    class NotificationChannelFragment < Resource

      include MsRestAzure

      # @return [String] The webhook URL to send notifications to.
      attr_accessor :web_hook_url

      # @return [String] Description of notification.
      attr_accessor :description

      # @return [Array<EventFragment>] The list of event for which this
      # notification is enabled.
      attr_accessor :events

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for NotificationChannelFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NotificationChannelFragment',
          type: {
            name: 'Composite',
            class_name: 'NotificationChannelFragment',
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
                required: false,
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
              web_hook_url: {
                required: false,
                serialized_name: 'properties.webHookUrl',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              events: {
                required: false,
                serialized_name: 'properties.events',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EventFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EventFragment'
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
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
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
