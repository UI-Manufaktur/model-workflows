module models.workflows.entities.steps.step;

@safe:
import models.workflows;

class DWFLStep : DOOPEntity {
  mixin(OOPEntityThis!("WFLElement"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "completionPolicy": OOPStringAttribute.descriptions(["en":""]),
        "completionPolicyPercentage": OOPStringAttribute.descriptions(["en":""]),
        "elementId": OOPUUIDAttribute.descriptions(["en":""]),
        "runStep": OOPStringAttribute.descriptions(["en":""]),
        "runStepConditionId": OOPUUIDAttribute.descriptions(["en":""]),
        "sequence": OOPStringAttribute.descriptions(["en":""]),
        "stepId": OOPLinkAttribute("wflStep").descriptions(["en":""]),
        "workflowUserValue": OOPStringAttribute.descriptions(["en":""]),
        "assignmentRelationType": OOPStringAttribute.descriptions(["en":""]),
        "assignmentType": OOPStringAttribute.descriptions(["en":""]),
        "hierarchyFilterConditionId": OOPUUIDAttribute.descriptions(["en":""]),
        "hierarchyFilterType": OOPStringAttribute.descriptions(["en":""]),
        "hierarchyProviderName": OOPStringAttribute.descriptions(["en":""]),
        "hierarchyStopConditionId": OOPUUIDAttribute.descriptions(["en":""]),
        "hierarchyTokenName": OOPStringAttribute.descriptions(["en":""]),
        "participantProviderName": OOPStringAttribute.descriptions(["en":""]),
        "participantTokenName": OOPStringAttribute.descriptions(["en":""]),
        "queueProviderName": OOPStringAttribute.descriptions(["en":""]),
        "queueTokenName": OOPStringAttribute.descriptions(["en":""]),
        "iserValue": OOPStringAttribute.descriptions(["en":""]),
        "dailyCalendar": OOPStringAttribute.descriptions(["en":""]),
        "dailyCalendarProvider": OOPStringAttribute.descriptions(["en":""]),
        "dailyIncludeFriday": OOPStringAttribute.descriptions(["en":""]),
        "dailyIncludeMonday": OOPStringAttribute.descriptions(["en":""]),
        "dailyIncludeSaturday": OOPStringAttribute.descriptions(["en":""]),
        "dailyIncludeSunday": OOPStringAttribute.descriptions(["en":""]),
        "dailyIncludeThursday": OOPStringAttribute.descriptions(["en":""]),
        "dailyIncludeTuesday": OOPStringAttribute.descriptions(["en":""]),
        "dailyIncludeWednesday": OOPStringAttribute.descriptions(["en":""]),
        "dailyUseNonCalendar": OOPStringAttribute.descriptions(["en":""]),
        "dailyValue": OOPStringAttribute.descriptions(["en":""]),
        "dateType": OOPStringAttribute.descriptions(["en":""]),
        "hourCalendar": OOPStringAttribute.descriptions(["en":""]),
        "hourCalendarProvider": OOPStringAttribute.descriptions(["en":""]),
        "hourIncludeFriday": OOPStringAttribute.descriptions(["en":""]),
        "hourIncludeMonday": OOPStringAttribute.descriptions(["en":""]),
        "hourIncludeSaturday": OOPStringAttribute.descriptions(["en":""]),
        "hourIncludeSunday": OOPStringAttribute.descriptions(["en":""]),
        "hourIncludeThursday": OOPStringAttribute.descriptions(["en":""]),
        "hourIncludeTuesday": OOPStringAttribute.descriptions(["en":""]),
        "hourIncludeWednesday": OOPStringAttribute.descriptions(["en":""]),
        "hoursAvailable": OOPStringAttribute.descriptions(["en":""]),
        "hourStartTime": OOPStringAttribute.descriptions(["en":""]),
        "hourUseNonCalendar": OOPStringAttribute.descriptions(["en":""]),
        "hourValue": OOPStringAttribute.descriptions(["en":""]),
        "monthlyDayOfWeek": OOPStringAttribute.descriptions(["en":""]),
        "monthlyWeekInMonth": OOPStringAttribute.descriptions(["en":""]),
        "timeSpanRelationType": OOPStringAttribute.descriptions(["en":""]),
        "weeklyDayOfWeek": OOPStringAttribute.descriptions(["en":""]),
        "weeklyValue": OOPStringAttribute.descriptions(["en":""]),
        "yearlyDayOfWeek": OOPStringAttribute.descriptions(["en":""]),
        "yearlyMonthInYear": OOPStringAttribute.descriptions(["en":""]),
        "yearlyWeekInMonth": OOPStringAttribute.descriptions(["en":""]),
        "escalationAction": OOPStringAttribute.descriptions(["en":""]),
        "escalationType": OOPStringAttribute.descriptions(["en":""]),
        "escalationPathAction": OOPStringAttribute.descriptions(["en":""]),
        "relationship_WorkflowElementRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_ConditionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_HierarchyFilterConditionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_HierarchyStopConditionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowStepTableRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_steps");
  }
}
mixin(OOPEntityCalls!("WFLStep"));

version(test_model_workflows) {
  unittest {
    assert(WFLStep);

  auto entity = WFLStep;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}