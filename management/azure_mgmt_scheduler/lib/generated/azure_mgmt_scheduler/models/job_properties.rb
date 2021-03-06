# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    #
    class JobProperties

      include MsRestAzure

      # @return [DateTime] Gets or sets the job start time.
      attr_accessor :start_time

      # @return [JobAction] Gets or sets the job action.
      attr_accessor :action

      # @return [JobRecurrence] Gets or sets the job recurrence.
      attr_accessor :recurrence

      # @return [JobState] Gets or set the job state. Possible values include:
      # 'Enabled', 'Disabled', 'Faulted', 'Completed'
      attr_accessor :state

      # @return [JobStatus] Gets the job status.
      attr_accessor :status


      #
      # Mapper for JobProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobProperties',
          type: {
            name: 'Composite',
            class_name: 'JobProperties',
            model_properties: {
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              action: {
                required: false,
                serialized_name: 'action',
                type: {
                  name: 'Composite',
                  class_name: 'JobAction'
                }
              },
              recurrence: {
                required: false,
                serialized_name: 'recurrence',
                type: {
                  name: 'Composite',
                  class_name: 'JobRecurrence'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'JobState'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Composite',
                  class_name: 'JobStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
