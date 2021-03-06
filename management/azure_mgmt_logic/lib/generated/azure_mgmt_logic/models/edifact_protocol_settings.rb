# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The Edifact agreement protocol settings.
    #
    class EdifactProtocolSettings

      include MsRestAzure

      # @return [EdifactValidationSettings] The EDIFACT validation settings.
      attr_accessor :validation_settings

      # @return [EdifactFramingSettings] The EDIFACT framing settings.
      attr_accessor :framing_settings

      # @return [EdifactEnvelopeSettings] The EDIFACT envelope settings.
      attr_accessor :envelope_settings

      # @return [EdifactAcknowledgementSettings] The EDIFACT acknowledgement
      # settings.
      attr_accessor :acknowledgement_settings

      # @return [EdifactMessageFilter] The EDIFACT message filter.
      attr_accessor :message_filter

      # @return [EdifactProcessingSettings] The EDIFACT processing Settings.
      attr_accessor :processing_settings

      # @return [Array<EdifactEnvelopeOverride>] The EDIFACT envelope override
      # settings.
      attr_accessor :envelope_overrides

      # @return [Array<EdifactMessageIdentifier>] The EDIFACT message filter
      # list.
      attr_accessor :message_filter_list

      # @return [Array<EdifactSchemaReference>] The EDIFACT schema references.
      attr_accessor :schema_references

      # @return [Array<EdifactValidationOverride>] The EDIFACT validation
      # override settings.
      attr_accessor :validation_overrides

      # @return [Array<EdifactDelimiterOverride>] The EDIFACT delimiter
      # override settings.
      attr_accessor :edifact_delimiter_overrides


      #
      # Mapper for EdifactProtocolSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EdifactProtocolSettings',
          type: {
            name: 'Composite',
            class_name: 'EdifactProtocolSettings',
            model_properties: {
              validation_settings: {
                required: true,
                serialized_name: 'validationSettings',
                type: {
                  name: 'Composite',
                  class_name: 'EdifactValidationSettings'
                }
              },
              framing_settings: {
                required: true,
                serialized_name: 'framingSettings',
                type: {
                  name: 'Composite',
                  class_name: 'EdifactFramingSettings'
                }
              },
              envelope_settings: {
                required: true,
                serialized_name: 'envelopeSettings',
                type: {
                  name: 'Composite',
                  class_name: 'EdifactEnvelopeSettings'
                }
              },
              acknowledgement_settings: {
                required: true,
                serialized_name: 'acknowledgementSettings',
                type: {
                  name: 'Composite',
                  class_name: 'EdifactAcknowledgementSettings'
                }
              },
              message_filter: {
                required: true,
                serialized_name: 'messageFilter',
                type: {
                  name: 'Composite',
                  class_name: 'EdifactMessageFilter'
                }
              },
              processing_settings: {
                required: true,
                serialized_name: 'processingSettings',
                type: {
                  name: 'Composite',
                  class_name: 'EdifactProcessingSettings'
                }
              },
              envelope_overrides: {
                required: false,
                serialized_name: 'envelopeOverrides',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EdifactEnvelopeOverrideElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EdifactEnvelopeOverride'
                      }
                  }
                }
              },
              message_filter_list: {
                required: false,
                serialized_name: 'messageFilterList',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EdifactMessageIdentifierElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EdifactMessageIdentifier'
                      }
                  }
                }
              },
              schema_references: {
                required: true,
                serialized_name: 'schemaReferences',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EdifactSchemaReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EdifactSchemaReference'
                      }
                  }
                }
              },
              validation_overrides: {
                required: false,
                serialized_name: 'validationOverrides',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EdifactValidationOverrideElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EdifactValidationOverride'
                      }
                  }
                }
              },
              edifact_delimiter_overrides: {
                required: false,
                serialized_name: 'edifactDelimiterOverrides',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EdifactDelimiterOverrideElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EdifactDelimiterOverride'
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
