# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_automation/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Automation
  autoload :AutomationAccountOperations,                        'generated/azure_mgmt_automation/automation_account_operations.rb'
  autoload :Operations,                                         'generated/azure_mgmt_automation/operations.rb'
  autoload :StatisticsOperations,                               'generated/azure_mgmt_automation/statistics_operations.rb'
  autoload :Usages,                                             'generated/azure_mgmt_automation/usages.rb'
  autoload :CertificateOperations,                              'generated/azure_mgmt_automation/certificate_operations.rb'
  autoload :ConnectionOperations,                               'generated/azure_mgmt_automation/connection_operations.rb'
  autoload :ConnectionTypeOperations,                           'generated/azure_mgmt_automation/connection_type_operations.rb'
  autoload :CredentialOperations,                               'generated/azure_mgmt_automation/credential_operations.rb'
  autoload :DscCompilationJobOperations,                        'generated/azure_mgmt_automation/dsc_compilation_job_operations.rb'
  autoload :DscConfigurationOperations,                         'generated/azure_mgmt_automation/dsc_configuration_operations.rb'
  autoload :AgentRegistrationInformation,                       'generated/azure_mgmt_automation/agent_registration_information.rb'
  autoload :DscNodeOperations,                                  'generated/azure_mgmt_automation/dsc_node_operations.rb'
  autoload :NodeReports,                                        'generated/azure_mgmt_automation/node_reports.rb'
  autoload :DscNodeConfigurationOperations,                     'generated/azure_mgmt_automation/dsc_node_configuration_operations.rb'
  autoload :HybridRunbookWorkerGroupOperations,                 'generated/azure_mgmt_automation/hybrid_runbook_worker_group_operations.rb'
  autoload :JobOperations,                                      'generated/azure_mgmt_automation/job_operations.rb'
  autoload :JobStreamOperations,                                'generated/azure_mgmt_automation/job_stream_operations.rb'
  autoload :JobScheduleOperations,                              'generated/azure_mgmt_automation/job_schedule_operations.rb'
  autoload :ActivityOperations,                                 'generated/azure_mgmt_automation/activity_operations.rb'
  autoload :ModuleModelOperations,                              'generated/azure_mgmt_automation/module_model_operations.rb'
  autoload :ObjectDataTypes,                                    'generated/azure_mgmt_automation/object_data_types.rb'
  autoload :Fields,                                             'generated/azure_mgmt_automation/fields.rb'
  autoload :RunbookDraftOperations,                             'generated/azure_mgmt_automation/runbook_draft_operations.rb'
  autoload :RunbookOperations,                                  'generated/azure_mgmt_automation/runbook_operations.rb'
  autoload :TestJobStreams,                                     'generated/azure_mgmt_automation/test_job_streams.rb'
  autoload :TestJobs,                                           'generated/azure_mgmt_automation/test_jobs.rb'
  autoload :ScheduleOperations,                                 'generated/azure_mgmt_automation/schedule_operations.rb'
  autoload :VariableOperations,                                 'generated/azure_mgmt_automation/variable_operations.rb'
  autoload :WebhookOperations,                                  'generated/azure_mgmt_automation/webhook_operations.rb'
  autoload :AutomationClient,                                   'generated/azure_mgmt_automation/automation_client.rb'

  module Models
    autoload :DscCompilationJob,                                  'generated/azure_mgmt_automation/models/dsc_compilation_job.rb'
    autoload :ErrorResponse,                                      'generated/azure_mgmt_automation/models/error_response.rb'
    autoload :DscCompilationJobListResult,                        'generated/azure_mgmt_automation/models/dsc_compilation_job_list_result.rb'
    autoload :Usage,                                              'generated/azure_mgmt_automation/models/usage.rb'
    autoload :DscConfigurationListResult,                         'generated/azure_mgmt_automation/models/dsc_configuration_list_result.rb'
    autoload :Statistics,                                         'generated/azure_mgmt_automation/models/statistics.rb'
    autoload :DscConfigurationCreateOrUpdateParameters,           'generated/azure_mgmt_automation/models/dsc_configuration_create_or_update_parameters.rb'
    autoload :RunbookParameter,                                   'generated/azure_mgmt_automation/models/runbook_parameter.rb'
    autoload :DscMetaConfiguration,                               'generated/azure_mgmt_automation/models/dsc_meta_configuration.rb'
    autoload :ContentLink,                                        'generated/azure_mgmt_automation/models/content_link.rb'
    autoload :DscNodeConfigurationCreateOrUpdateParameters,       'generated/azure_mgmt_automation/models/dsc_node_configuration_create_or_update_parameters.rb'
    autoload :ContentHash,                                        'generated/azure_mgmt_automation/models/content_hash.rb'
    autoload :ModuleErrorInfo,                                    'generated/azure_mgmt_automation/models/module_error_info.rb'
    autoload :RunbookDraft,                                       'generated/azure_mgmt_automation/models/runbook_draft.rb'
    autoload :DscNodeConfigurationAssociationProperty,            'generated/azure_mgmt_automation/models/dsc_node_configuration_association_property.rb'
    autoload :WebhookCreateOrUpdateParameters,                    'generated/azure_mgmt_automation/models/webhook_create_or_update_parameters.rb'
    autoload :ContentSource,                                      'generated/azure_mgmt_automation/models/content_source.rb'
    autoload :DscNodeConfiguration,                               'generated/azure_mgmt_automation/models/dsc_node_configuration.rb'
    autoload :WebhookListResult,                                  'generated/azure_mgmt_automation/models/webhook_list_result.rb'
    autoload :DscNodeConfigurationListResult,                     'generated/azure_mgmt_automation/models/dsc_node_configuration_list_result.rb'
    autoload :Webhook,                                            'generated/azure_mgmt_automation/models/webhook.rb'
    autoload :DscNodeListResult,                                  'generated/azure_mgmt_automation/models/dsc_node_list_result.rb'
    autoload :AutomationAccountListResult,                        'generated/azure_mgmt_automation/models/automation_account_list_result.rb'
    autoload :DscNodeUpdateParameters,                            'generated/azure_mgmt_automation/models/dsc_node_update_parameters.rb'
    autoload :Operation,                                          'generated/azure_mgmt_automation/models/operation.rb'
    autoload :DscReportError,                                     'generated/azure_mgmt_automation/models/dsc_report_error.rb'
    autoload :AutomationAccountCreateOrUpdateParameters,          'generated/azure_mgmt_automation/models/automation_account_create_or_update_parameters.rb'
    autoload :DscReportResourceNavigation,                        'generated/azure_mgmt_automation/models/dsc_report_resource_navigation.rb'
    autoload :Certificate,                                        'generated/azure_mgmt_automation/models/certificate.rb'
    autoload :DscReportResource,                                  'generated/azure_mgmt_automation/models/dsc_report_resource.rb'
    autoload :CertificateUpdateParameters,                        'generated/azure_mgmt_automation/models/certificate_update_parameters.rb'
    autoload :DscNodeReport,                                      'generated/azure_mgmt_automation/models/dsc_node_report.rb'
    autoload :ConnectionTypeAssociationProperty,                  'generated/azure_mgmt_automation/models/connection_type_association_property.rb'
    autoload :DscNodeReportListResult,                            'generated/azure_mgmt_automation/models/dsc_node_report_list_result.rb'
    autoload :ConnectionListResult,                               'generated/azure_mgmt_automation/models/connection_list_result.rb'
    autoload :HybridRunbookWorker,                                'generated/azure_mgmt_automation/models/hybrid_runbook_worker.rb'
    autoload :ConnectionCreateOrUpdateParameters,                 'generated/azure_mgmt_automation/models/connection_create_or_update_parameters.rb'
    autoload :RunAsCredentialAssociationProperty,                 'generated/azure_mgmt_automation/models/run_as_credential_association_property.rb'
    autoload :ConnectionType,                                     'generated/azure_mgmt_automation/models/connection_type.rb'
    autoload :HybridRunbookWorkerGroup,                           'generated/azure_mgmt_automation/models/hybrid_runbook_worker_group.rb'
    autoload :ConnectionTypeCreateOrUpdateParameters,             'generated/azure_mgmt_automation/models/connection_type_create_or_update_parameters.rb'
    autoload :HybridRunbookWorkerGroupsListResult,                'generated/azure_mgmt_automation/models/hybrid_runbook_worker_groups_list_result.rb'
    autoload :CredentialListResult,                               'generated/azure_mgmt_automation/models/credential_list_result.rb'
    autoload :HybridRunbookWorkerGroupUpdateParameters,           'generated/azure_mgmt_automation/models/hybrid_runbook_worker_group_update_parameters.rb'
    autoload :CredentialCreateOrUpdateParameters,                 'generated/azure_mgmt_automation/models/credential_create_or_update_parameters.rb'
    autoload :RunbookAssociationProperty,                         'generated/azure_mgmt_automation/models/runbook_association_property.rb'
    autoload :ActivityParameterSet,                               'generated/azure_mgmt_automation/models/activity_parameter_set.rb'
    autoload :Job,                                                'generated/azure_mgmt_automation/models/job.rb'
    autoload :Activity,                                           'generated/azure_mgmt_automation/models/activity.rb'
    autoload :JobCreateParameters,                                'generated/azure_mgmt_automation/models/job_create_parameters.rb'
    autoload :AdvancedScheduleMonthlyOccurrence,                  'generated/azure_mgmt_automation/models/advanced_schedule_monthly_occurrence.rb'
    autoload :JobListResult,                                      'generated/azure_mgmt_automation/models/job_list_result.rb'
    autoload :AgentRegistrationKeys,                              'generated/azure_mgmt_automation/models/agent_registration_keys.rb'
    autoload :ScheduleAssociationProperty,                        'generated/azure_mgmt_automation/models/schedule_association_property.rb'
    autoload :AgentRegistrationRegenerateKeyParameter,            'generated/azure_mgmt_automation/models/agent_registration_regenerate_key_parameter.rb'
    autoload :JobScheduleCreateParameters,                        'generated/azure_mgmt_automation/models/job_schedule_create_parameters.rb'
    autoload :DscCompilationJobCreateParameters,                  'generated/azure_mgmt_automation/models/dsc_compilation_job_create_parameters.rb'
    autoload :JobSchedule,                                        'generated/azure_mgmt_automation/models/job_schedule.rb'
    autoload :UsageListResult,                                    'generated/azure_mgmt_automation/models/usage_list_result.rb'
    autoload :JobScheduleListResult,                              'generated/azure_mgmt_automation/models/job_schedule_list_result.rb'
    autoload :JobStream,                                          'generated/azure_mgmt_automation/models/job_stream.rb'
    autoload :DscConfigurationParameter,                          'generated/azure_mgmt_automation/models/dsc_configuration_parameter.rb'
    autoload :JobStreamListResult,                                'generated/azure_mgmt_automation/models/job_stream_list_result.rb'
    autoload :Resource,                                           'generated/azure_mgmt_automation/models/resource.rb'
    autoload :ModuleCreateOrUpdateParameters,                     'generated/azure_mgmt_automation/models/module_create_or_update_parameters.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_automation/models/operation_list_result.rb'
    autoload :ModuleListResult,                                   'generated/azure_mgmt_automation/models/module_list_result.rb'
    autoload :CertificateListResult,                              'generated/azure_mgmt_automation/models/certificate_list_result.rb'
    autoload :ModuleUpdateParameters,                             'generated/azure_mgmt_automation/models/module_update_parameters.rb'
    autoload :Connection,                                         'generated/azure_mgmt_automation/models/connection.rb'
    autoload :RunbookDraftUndoEditResult,                         'generated/azure_mgmt_automation/models/runbook_draft_undo_edit_result.rb'
    autoload :FieldDefinition,                                    'generated/azure_mgmt_automation/models/field_definition.rb'
    autoload :RunbookCreateOrUpdateParameters,                    'generated/azure_mgmt_automation/models/runbook_create_or_update_parameters.rb'
    autoload :Credential,                                         'generated/azure_mgmt_automation/models/credential.rb'
    autoload :RunbookCreateOrUpdateDraftProperties,               'generated/azure_mgmt_automation/models/runbook_create_or_update_draft_properties.rb'
    autoload :ActivityParameter,                                  'generated/azure_mgmt_automation/models/activity_parameter.rb'
    autoload :RunbookCreateOrUpdateDraftParameters,               'generated/azure_mgmt_automation/models/runbook_create_or_update_draft_parameters.rb'
    autoload :ActivityListResult,                                 'generated/azure_mgmt_automation/models/activity_list_result.rb'
    autoload :RunbookUpdateParameters,                            'generated/azure_mgmt_automation/models/runbook_update_parameters.rb'
    autoload :AgentRegistration,                                  'generated/azure_mgmt_automation/models/agent_registration.rb'
    autoload :RunbookListResult,                                  'generated/azure_mgmt_automation/models/runbook_list_result.rb'
    autoload :UsageCounterName,                                   'generated/azure_mgmt_automation/models/usage_counter_name.rb'
    autoload :ScheduleCreateOrUpdateParameters,                   'generated/azure_mgmt_automation/models/schedule_create_or_update_parameters.rb'
    autoload :WebhookUpdateParameters,                            'generated/azure_mgmt_automation/models/webhook_update_parameters.rb'
    autoload :Schedule,                                           'generated/azure_mgmt_automation/models/schedule.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_automation/models/operation_display.rb'
    autoload :ScheduleUpdateParameters,                           'generated/azure_mgmt_automation/models/schedule_update_parameters.rb'
    autoload :CertificateCreateOrUpdateParameters,                'generated/azure_mgmt_automation/models/certificate_create_or_update_parameters.rb'
    autoload :ScheduleListResult,                                 'generated/azure_mgmt_automation/models/schedule_list_result.rb'
    autoload :ConnectionTypeListResult,                           'generated/azure_mgmt_automation/models/connection_type_list_result.rb'
    autoload :SubResource,                                        'generated/azure_mgmt_automation/models/sub_resource.rb'
    autoload :ActivityOutputType,                                 'generated/azure_mgmt_automation/models/activity_output_type.rb'
    autoload :TestJobCreateParameters,                            'generated/azure_mgmt_automation/models/test_job_create_parameters.rb'
    autoload :DscConfigurationAssociationProperty,                'generated/azure_mgmt_automation/models/dsc_configuration_association_property.rb'
    autoload :TestJob,                                            'generated/azure_mgmt_automation/models/test_job.rb'
    autoload :Sku,                                                'generated/azure_mgmt_automation/models/sku.rb'
    autoload :TypeField,                                          'generated/azure_mgmt_automation/models/type_field.rb'
    autoload :ConnectionUpdateParameters,                         'generated/azure_mgmt_automation/models/connection_update_parameters.rb'
    autoload :TypeFieldListResult,                                'generated/azure_mgmt_automation/models/type_field_list_result.rb'
    autoload :AdvancedSchedule,                                   'generated/azure_mgmt_automation/models/advanced_schedule.rb'
    autoload :VariableCreateOrUpdateParameters,                   'generated/azure_mgmt_automation/models/variable_create_or_update_parameters.rb'
    autoload :AutomationAccountUpdateParameters,                  'generated/azure_mgmt_automation/models/automation_account_update_parameters.rb'
    autoload :Variable,                                           'generated/azure_mgmt_automation/models/variable.rb'
    autoload :StatisticsListResult,                               'generated/azure_mgmt_automation/models/statistics_list_result.rb'
    autoload :VariableListResult,                                 'generated/azure_mgmt_automation/models/variable_list_result.rb'
    autoload :CredentialUpdateParameters,                         'generated/azure_mgmt_automation/models/credential_update_parameters.rb'
    autoload :VariableUpdateParameters,                           'generated/azure_mgmt_automation/models/variable_update_parameters.rb'
    autoload :Runbook,                                            'generated/azure_mgmt_automation/models/runbook.rb'
    autoload :ModuleModel,                                        'generated/azure_mgmt_automation/models/module_model.rb'
    autoload :DscNode,                                            'generated/azure_mgmt_automation/models/dsc_node.rb'
    autoload :DscConfiguration,                                   'generated/azure_mgmt_automation/models/dsc_configuration.rb'
    autoload :AutomationAccount,                                  'generated/azure_mgmt_automation/models/automation_account.rb'
    autoload :RunbookTypeEnum,                                    'generated/azure_mgmt_automation/models/runbook_type_enum.rb'
    autoload :RunbookState,                                       'generated/azure_mgmt_automation/models/runbook_state.rb'
    autoload :RunbookProvisioningState,                           'generated/azure_mgmt_automation/models/runbook_provisioning_state.rb'
    autoload :ModuleProvisioningState,                            'generated/azure_mgmt_automation/models/module_provisioning_state.rb'
    autoload :ContentSourceType,                                  'generated/azure_mgmt_automation/models/content_source_type.rb'
    autoload :DscConfigurationProvisioningState,                  'generated/azure_mgmt_automation/models/dsc_configuration_provisioning_state.rb'
    autoload :DscConfigurationState,                              'generated/azure_mgmt_automation/models/dsc_configuration_state.rb'
    autoload :SkuNameEnum,                                        'generated/azure_mgmt_automation/models/sku_name_enum.rb'
    autoload :AutomationAccountState,                             'generated/azure_mgmt_automation/models/automation_account_state.rb'
    autoload :ScheduleDay,                                        'generated/azure_mgmt_automation/models/schedule_day.rb'
    autoload :AgentRegistrationKeyName,                           'generated/azure_mgmt_automation/models/agent_registration_key_name.rb'
    autoload :JobStatus,                                          'generated/azure_mgmt_automation/models/job_status.rb'
    autoload :JobStreamType,                                      'generated/azure_mgmt_automation/models/job_stream_type.rb'
    autoload :HttpStatusCode,                                     'generated/azure_mgmt_automation/models/http_status_code.rb'
    autoload :ScheduleFrequency,                                  'generated/azure_mgmt_automation/models/schedule_frequency.rb'
  end
end
