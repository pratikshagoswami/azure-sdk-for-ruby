# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation
  module Models
    #
    # Definition of the dsc node report type.
    #
    class DscNodeReport

      include MsRestAzure

      # @return [DateTime] Gets or sets the end time of the node report.
      attr_accessor :end_time

      # @return [DateTime] Gets or sets the lastModifiedTime of the node
      # report.
      attr_accessor :last_modified_time

      # @return [DateTime] Gets or sets the start time of the node report.
      attr_accessor :start_time

      # @return [String] Gets or sets the type of the node report.
      attr_accessor :type

      # @return [String] Gets or sets the id of the node report.
      attr_accessor :report_id

      # @return [String] Gets or sets the status of the node report.
      attr_accessor :status

      # @return [String] Gets or sets the refreshMode of the node report.
      attr_accessor :refresh_mode

      # @return [String] Gets or sets the rebootRequested of the node report.
      attr_accessor :reboot_requested

      # @return [String] Gets or sets the reportFormatVersion of the node
      # report.
      attr_accessor :report_format_version

      # @return [String] Gets or sets the configurationVersion of the node
      # report.
      attr_accessor :configuration_version

      # @return [String] Gets or sets the id.
      attr_accessor :id

      # @return [Array<DscReportError>] Gets or sets the errors for the node
      # report.
      attr_accessor :errors

      # @return [Array<DscReportResource>] Gets or sets the resource for the
      # node report.
      attr_accessor :resources

      # @return [DscMetaConfiguration] Gets or sets the metaConfiguration of
      # the node at the time of the report.
      attr_accessor :meta_configuration

      # @return [String] Gets or sets the hostname of the node that sent the
      # report.
      attr_accessor :host_name

      # @return [Array<String>] Gets or sets the IPv4 address of the node that
      # sent the report.
      attr_accessor :i_pv4addresses

      # @return [Array<String>] Gets or sets the IPv6 address of the node that
      # sent the report.
      attr_accessor :i_pv6addresses

      # @return [Integer] Gets or sets the number of resource in the node
      # report.
      attr_accessor :number_of_resources

      # @return [String] Gets or sets the unparsed errors for the node report.
      attr_accessor :raw_errors


      #
      # Mapper for DscNodeReport class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DscNodeReport',
          type: {
            name: 'Composite',
            class_name: 'DscNodeReport',
            model_properties: {
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                required: false,
                serialized_name: 'lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              report_id: {
                required: false,
                serialized_name: 'reportId',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              refresh_mode: {
                required: false,
                serialized_name: 'refreshMode',
                type: {
                  name: 'String'
                }
              },
              reboot_requested: {
                required: false,
                serialized_name: 'rebootRequested',
                type: {
                  name: 'String'
                }
              },
              report_format_version: {
                required: false,
                serialized_name: 'reportFormatVersion',
                type: {
                  name: 'String'
                }
              },
              configuration_version: {
                required: false,
                serialized_name: 'configurationVersion',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              errors: {
                required: false,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DscReportErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DscReportError'
                      }
                  }
                }
              },
              resources: {
                required: false,
                serialized_name: 'resources',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DscReportResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DscReportResource'
                      }
                  }
                }
              },
              meta_configuration: {
                required: false,
                serialized_name: 'metaConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'DscMetaConfiguration'
                }
              },
              host_name: {
                required: false,
                serialized_name: 'hostName',
                type: {
                  name: 'String'
                }
              },
              i_pv4addresses: {
                required: false,
                serialized_name: 'iPV4Addresses',
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
              i_pv6addresses: {
                required: false,
                serialized_name: 'iPV6Addresses',
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
              number_of_resources: {
                required: false,
                serialized_name: 'numberOfResources',
                type: {
                  name: 'Number'
                }
              },
              raw_errors: {
                required: false,
                serialized_name: 'rawErrors',
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
