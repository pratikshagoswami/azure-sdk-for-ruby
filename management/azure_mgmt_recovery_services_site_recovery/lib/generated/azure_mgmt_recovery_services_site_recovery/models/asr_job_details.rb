# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery
  module Models
    #
    # This class represents job details based on specific job type.
    #
    class AsrJobDetails < JobDetails

      include MsRestAzure


      def initialize
        @instanceType = "AsrJobDetails"
      end

      attr_accessor :instanceType


      #
      # Mapper for AsrJobDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AsrJobDetails',
          type: {
            name: 'Composite',
            class_name: 'AsrJobDetails',
            model_properties: {
              affected_object_details: {
                required: false,
                serialized_name: 'affectedObjectDetails',
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
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
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
