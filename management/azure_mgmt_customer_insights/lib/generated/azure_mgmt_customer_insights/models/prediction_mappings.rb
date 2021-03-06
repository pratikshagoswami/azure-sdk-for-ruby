# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights
  module Models
    #
    # Definition of the link mapping of prediction.
    #
    class PredictionMappings

      include MsRestAzure

      # @return [String] The score of the link mapping.
      attr_accessor :score

      # @return [String] The grade of the link mapping.
      attr_accessor :grade

      # @return [String] The reason of the link mapping.
      attr_accessor :reason


      #
      # Mapper for PredictionMappings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Prediction_mappings',
          type: {
            name: 'Composite',
            class_name: 'PredictionMappings',
            model_properties: {
              score: {
                required: false,
                serialized_name: 'score',
                type: {
                  name: 'String'
                }
              },
              grade: {
                required: false,
                serialized_name: 'grade',
                type: {
                  name: 'String'
                }
              },
              reason: {
                required: false,
                serialized_name: 'reason',
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
