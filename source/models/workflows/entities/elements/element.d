module models.workflows.entities.elements.element;

@safe:
import models.workflows;

class DWFLElement : DOOPEntity {
  mixin(OOPEntityThis!("WFLElement"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "conditionId": OOPUUIDAttribute.descriptions(["en":""]),
        "autoCompleteAction": OOPStringAttribute.descriptions(["en":""]),
        "autoCompleteConditionId": OOPUUIDAttribute.descriptions(["en":""]),
        "workflowId": OOPUUIDAttribute.descriptions(["en":""]),
        "elementId": OOPUUIDAttribute.descriptions(["en":""]),
        "elementName": OOPStringAttribute.descriptions(["en":""]),
        "elementType": OOPStringAttribute.descriptions(["en":""]),
        "enableActionsInWorkList": OOPStringAttribute.descriptions(["en":""]),
        "runSubworkflow": OOPStringAttribute.descriptions(["en":""]),
        "runSubworkflowConditionId": OOPUUIDAttribute.descriptions(["en":""]),
        "finalApproverUser": OOPStringAttribute.descriptions(["en":""]),
        "required": OOPStringAttribute.descriptions(["en":""]),
        "runInParallel": OOPStringAttribute.descriptions(["en":""]),
        "sequence": OOPStringAttribute.descriptions(["en":""]),
        "enableAutoComplete": OOPStringAttribute.descriptions(["en":""]),
        "enableFinalApprover": OOPStringAttribute.descriptions(["en":""]),
        "enableMaximumRuntime": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeOutcome": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeTime": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeTimeZone": OOPStringAttribute.descriptions(["en":""]),
        "parallelBranchName": OOPStringAttribute.descriptions(["en":""]),
        "parallelBranchElementId": OOPUUIDAttribute.descriptions(["en":""]),
        "maximumRuntimeDailyCalendar": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeDailyCalendarProvider": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeDailyIncludeFriday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeDailyIncludeMonday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeDailyIncludeSaturday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeDailyIncludeSunday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeDailyIncludeThursday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeDailyIncludeTuesday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeDailyIncludeWednesday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeDailyUseNonCalendar": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeDailyValue": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeDateType": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourCalendar": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourCalendarProvider": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourIncludeFriday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourIncludeMonday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourIncludeSaturday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourIncludeSunday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourIncludeThursday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourIncludeTuesday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourIncludeWednesday": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHoursAvailable": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourStartTime": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourUseNonCalendar": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeHourValue": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeMonthlyDayOfWeek": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeMonthlyWeekInMonth": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeTimeSpanRelationType": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeWeeklyDayOfWeek": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeWeeklyValue": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeYearlyDayOfWeek": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeYearlyMonthInYear": OOPStringAttribute.descriptions(["en":""]),
        "maximumRuntimeYearlyWeekInMonth": OOPStringAttribute.descriptions(["en":""]),
        "relationship_WorkflowVersionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_ParallelBranchRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_SubworkflowConditionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_AutoCompleteConditionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_ConditionalDecisionConditionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowElementTableRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
    ])
    .registerPath("workflow_elements");
  }
}
mixin(OOPEntityCalls!("WFLElement"));

version(test_model_workflows) {
  unittest {
    assert(WFLElement);

  auto entity = WFLElement;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}