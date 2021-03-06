# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub
  module Models
    #
    # The JSON-serialized array of Certificate objects.
    #
    class CertificateListDescription

      include MsRestAzure

      # @return [Array<CertificateDescription>] The array of Certificate
      # objects.
      attr_accessor :value


      #
      # Mapper for CertificateListDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CertificateListDescription',
          type: {
            name: 'Composite',
            class_name: 'CertificateListDescription',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CertificateDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CertificateDescription'
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
