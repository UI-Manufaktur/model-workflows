module models.workflows.entities.elements.element;

@safe:
import models.workflows;

class DWorkflowElementEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowElementEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        ConditionIdAttribute, // 
        ElementIdAttribute, // 
        WorkflowIdAttribute, // 
      ])
      .addValues([
        "autoCompleteAction": StringAttribute, // 
        "autoCompleteConditionId": ConditionIdAttribute, // 
        "elementName": StringAttribute, // 
        "elementType": StringAttribute, // 
        "enableActionsInWorkList": StringAttribute, // 
        "runSubworkflow": StringAttribute, // 
        "runSubworkflowConditionId": ConditionIdAttribute, // 
        "finalApproverUser": StringAttribute, // 
        "required": StringAttribute, // 
        "runInParallel": StringAttribute, // 
        "sequence": StringAttribute, // 
        "enableAutoComplete": StringAttribute, // 
        "enableFinalApprover": StringAttribute, // 
        "enableMaximumRuntime": StringAttribute, // 
        "maximumRuntimeOutcome": StringAttribute, // 
        "maximumRuntimeTime": StringAttribute, // 
        "maximumRuntimeTimeZone": StringAttribute, // 
        "parallelBranchName": StringAttribute, // 
        "parallelBranchElementId": ElementIdAttribute, // 
        "maximumRuntimeDailyCalendar": StringAttribute, // 
        "maximumRuntimeDailyCalendarProvider": StringAttribute, // 
        "maximumRuntimeDailyIncludeFriday": StringAttribute, // 
        "maximumRuntimeDailyIncludeMonday": StringAttribute, // 
        "maximumRuntimeDailyIncludeSaturday": StringAttribute, // 
        "maximumRuntimeDailyIncludeSunday": StringAttribute, // 
        "maximumRuntimeDailyIncludeThursday": StringAttribute, // 
        "maximumRuntimeDailyIncludeTuesday": StringAttribute, // 
        "maximumRuntimeDailyIncludeWednesday": StringAttribute, // 
        "maximumRuntimeDailyUseNonCalendar": StringAttribute, // 
        "maximumRuntimeDailyValue": StringAttribute, // 
        "maximumRuntimeDateType": StringAttribute, // 
        "maximumRuntimeHourCalendar": StringAttribute, // 
        "maximumRuntimeHourCalendarProvider": StringAttribute, // 
        "maximumRuntimeHourIncludeFriday": StringAttribute, // 
        "maximumRuntimeHourIncludeMonday": StringAttribute, // 
        "maximumRuntimeHourIncludeSaturday": StringAttribute, // 
        "maximumRuntimeHourIncludeSunday": StringAttribute, // 
        "maximumRuntimeHourIncludeThursday": StringAttribute, // 
        "maximumRuntimeHourIncludeTuesday": StringAttribute, // 
        "maximumRuntimeHourIncludeWednesday": StringAttribute, // 
        "maximumRuntimeHoursAvailable": StringAttribute, // 
        "maximumRuntimeHourStartTime": StringAttribute, // 
        "maximumRuntimeHourUseNonCalendar": StringAttribute, // 
        "maximumRuntimeHourValue": StringAttribute, // 
        "maximumRuntimeMonthlyDayOfWeek": StringAttribute, // 
        "maximumRuntimeMonthlyWeekInMonth": StringAttribute, // 
        "maximumRuntimeTimeSpanRelationType": StringAttribute, // 
        "maximumRuntimeWeeklyDayOfWeek": StringAttribute, // 
        "maximumRuntimeWeeklyValue": StringAttribute, // 
        "maximumRuntimeYearlyDayOfWeek": StringAttribute, // 
        "maximumRuntimeYearlyMonthInYear": StringAttribute, // 
        "maximumRuntimeYearlyWeekInMonth": StringAttribute, // 
        "relationship_WorkflowVersionRelationshipId": UUIDAttribute, // 
        "relationship_ParallelBranchRelationshipId": UUIDAttribute, // 
        "relationship_SubworkflowConditionRelationshipId": UUIDAttribute, // 
        "relationship_AutoCompleteConditionRelationshipId": UUIDAttribute, // 
        "relationship_ConditionalDecisionConditionRelationshipId": UUIDAttribute, // 
        "backingTable_WorkflowElementTableRelationshipId": UUIDAttribute, // 
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