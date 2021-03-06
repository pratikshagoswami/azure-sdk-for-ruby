# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # Property/Properties which represent a unique ID.
    #
    class StrongId

      include MsRestAzure

      # @return [Array<String>] The properties which make up the unique ID.
      attr_accessor :key_property_names

      # @return [String] The Name identifying the strong ID.
      attr_accessor :strong_id_name

      # @return [Hash{String => String}] Localized display name.
      attr_accessor :display_name

      # @return [Hash{String => String}] Localized descriptions.
      attr_accessor :description


      #
      # Mapper for StrongId class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StrongId',
          type: {
            name: 'Composite',
            class_name: 'StrongId',
            model_properties: {
              key_property_names: {
                required: true,
                serialized_name: 'keyPropertyNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              strong_id_name: {
                required: true,
                serialized_name: 'strongIdName',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
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
              description: {
                required: false,
                serialized_name: 'description',
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
              }
            }
          }
        }
      end
    end
  end
end
