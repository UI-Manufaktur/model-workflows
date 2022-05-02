module models.workflows.entities.elements.element;

@safe:
import models.workflows;

class DWorkflowElementEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowElementEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "conditionId": UUIDAttributeClass, // "]),
        "autoCompleteAction": StringAttributeClass, // "]),
        "autoCompleteConditionId": UUIDAttributeClass, // "]),
        "workflowId": UUIDAttributeClass, // "]),
        "elementId": UUIDAttributeClass, // "]),
        "elementName": StringAttributeClass, // "]),
        "elementType": StringAttributeClass, // "]),
        "enableActionsInWorkList": StringAttributeClass, // "]),
        "runSubworkflow": StringAttributeClass, // "]),
        "runSubworkflowConditionId": UUIDAttributeClass, // "]),
        "finalApproverUser": StringAttributeClass, // "]),
        "required": StringAttributeClass, // "]),
        "runInParallel": StringAttributeClass, // "]),
        "sequence": StringAttributeClass, // "]),
        "enableAutoComplete": StringAttributeClass, // "]),
        "enableFinalApprover": StringAttributeClass, // "]),
        "enableMaximumRuntime": StringAttributeClass, // "]),
        "maximumRuntimeOutcome": StringAttributeClass, // "]),
        "maximumRuntimeTime": StringAttributeClass, // "]),
        "maximumRuntimeTimeZone": StringAttributeClass, // "]),
        "parallelBranchName": StringAttributeClass, // "]),
        "parallelBranchElementId": UUIDAttributeClass, // "]),
        "maximumRuntimeDailyCalendar": StringAttributeClass, // "]),
        "maximumRuntimeDailyCalendarProvider": StringAttributeClass, // "]),
        "maximumRuntimeDailyIncludeFriday": StringAttributeClass, // "]),
        "maximumRuntimeDailyIncludeMonday": StringAttributeClass, // "]),
        "maximumRuntimeDailyIncludeSaturday": StringAttributeClass, // "]),
        "maximumRuntimeDailyIncludeSunday": StringAttributeClass, // "]),
        "maximumRuntimeDailyIncludeThursday": StringAttributeClass, // "]),
        "maximumRuntimeDailyIncludeTuesday": StringAttributeClass, // "]),
        "maximumRuntimeDailyIncludeWednesday": StringAttributeClass, // "]),
        "maximumRuntimeDailyUseNonCalendar": StringAttributeClass, // "]),
        "maximumRuntimeDailyValue": StringAttributeClass, // "]),
        "maximumRuntimeDateType": StringAttributeClass, // "]),
        "maximumRuntimeHourCalendar": StringAttributeClass, // "]),
        "maximumRuntimeHourCalendarProvider": StringAttributeClass, // "]),
        "maximumRuntimeHourIncludeFriday": StringAttributeClass, // "]),
        "maximumRuntimeHourIncludeMonday": StringAttributeClass, // "]),
        "maximumRuntimeHourIncludeSaturday": StringAttributeClass, // "]),
        "maximumRuntimeHourIncludeSunday": StringAttributeClass, // "]),
        "maximumRuntimeHourIncludeThursday": StringAttributeClass, // "]),
        "maximumRuntimeHourIncludeTuesday": StringAttributeClass, // "]),
        "maximumRuntimeHourIncludeWednesday": StringAttributeClass, // "]),
        "maximumRuntimeHoursAvailable": StringAttributeClass, // "]),
        "maximumRuntimeHourStartTime": StringAttributeClass, // "]),
        "maximumRuntimeHourUseNonCalendar": StringAttributeClass, // "]),
        "maximumRuntimeHourValue": StringAttributeClass, // "]),
        "maximumRuntimeMonthlyDayOfWeek": StringAttributeClass, // "]),
        "maximumRuntimeMonthlyWeekInMonth": StringAttributeClass, // "]),
        "maximumRuntimeTimeSpanRelationType": StringAttributeClass, // "]),
        "maximumRuntimeWeeklyDayOfWeek": StringAttributeClass, // "]),
        "maximumRuntimeWeeklyValue": StringAttributeClass, // "]),
        "maximumRuntimeYearlyDayOfWeek": StringAttributeClass, // "]),
        "maximumRuntimeYearlyMonthInYear": StringAttributeClass, // "]),
        "maximumRuntimeYearlyWeekInMonth": StringAttributeClass, // "]),
        "relationship_WorkflowVersionRelationshipId": UUIDAttributeClass, // "]),
        "relationship_ParallelBranchRelationshipId": UUIDAttributeClass, // "]),
        "relationship_SubworkflowConditionRelationshipId": UUIDAttributeClass, // "]),
        "relationship_AutoCompleteConditionRelationshipId": UUIDAttributeClass, // "]),
        "relationship_ConditionalDecisionConditionRelationshipId": UUIDAttributeClass, // "]),
        "backingTable_WorkflowElementTableRelationshipId": UUIDAttributeClass, // "]),
    ])
    .registerPath("workflow_elements");
  }
}
mixin(EntityCalls!("WorkflowElementEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowElementEntity);

  auto entity = WorkflowElementEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}