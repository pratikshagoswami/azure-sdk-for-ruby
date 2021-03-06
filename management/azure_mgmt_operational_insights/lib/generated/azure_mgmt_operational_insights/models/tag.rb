# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::OperationalInsights
  module Models
    #
    # A tag of a saved search.
    #
    class Tag

      include MsRestAzure

      # @return [String] The tag name.
      attr_accessor :name

      # @return [String] The tag value.
      attr_accessor :value


      #
      # Mapper for Tag class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Tag',
          type: {
            name: 'Composite',
            class_name: 'Tag',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: true,
                serialized_name: 'Value',
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
