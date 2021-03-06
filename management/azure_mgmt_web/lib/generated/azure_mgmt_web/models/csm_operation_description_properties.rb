# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Model object.
    #
    #
    class CsmOperationDescriptionProperties

      include MsRestAzure

      # @return [ServiceSpecification]
      attr_accessor :service_specification


      #
      # Mapper for CsmOperationDescriptionProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CsmOperationDescriptionProperties',
          type: {
            name: 'Composite',
            class_name: 'CsmOperationDescriptionProperties',
            model_properties: {
              service_specification: {
                required: false,
                serialized_name: 'serviceSpecification',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceSpecification'
                }
              }
            }
          }
        }
      end
    end
  end
end
