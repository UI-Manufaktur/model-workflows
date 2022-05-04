module models.workflows.entities.steps.step;

@safe:
import models.workflows;

class DWorkflowStepEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowStepEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "completionPolicy": StringAttributeClass, //
        "completionPolicyPercentage": StringAttributeClass, //
        "elementId": UUIDAttributeClass, //
        "runStep": StringAttributeClass, //
        "runStepConditionId": UUIDAttributeClass, //
        "sequence": StringAttributeClass, //
        "stepId": UUIDAttributeClass, // WorkflowStepEntity").descriptions(["en":""]),
        "workflowUserValue": StringAttributeClass, //
        "assignmentRelationType": StringAttributeClass, //
        "assignmentType": StringAttributeClass, //
        "hierarchyFilterConditionId": UUIDAttributeClass, //
        "hierarchyFilterType": StringAttributeClass, //
        "hierarchyProviderName": StringAttributeClass, //
        "hierarchyStopConditionId": UUIDAttributeClass, //
        "hierarchyTokenName": StringAttributeClass, //
        "participantProviderName": StringAttributeClass, //
        "participantTokenName": StringAttributeClass, //
        "queueProviderName": StringAttributeClass, //
        "queueTokenName": StringAttributeClass, //
        "iserValue": StringAttributeClass, //
        "dailyCalendar": StringAttributeClass, //
        "dailyCalendarProvider": StringAttributeClass, //
        "dailyIncludeFriday": StringAttributeClass, //
        "dailyIncludeMonday": StringAttributeClass, //
        "dailyIncludeSaturday": StringAttributeClass, //
        "dailyIncludeSunday": StringAttributeClass, //
        "dailyIncludeThursday": StringAttributeClass, //
        "dailyIncludeTuesday": StringAttributeClass, //
        "dailyIncludeWednesday": StringAttributeClass, //
        "dailyUseNonCalendar": StringAttributeClass, //
        "dailyValue": StringAttributeClass, //
        "dateType": StringAttributeClass, //
        "hourCalendar": StringAttributeClass, //
        "hourCalendarProvider": StringAttributeClass, //
        "hourIncludeFriday": StringAttributeClass, //
        "hourIncludeMonday": StringAttributeClass, //
        "hourIncludeSaturday": StringAttributeClass, //
        "hourIncludeSunday": StringAttributeClass, //
        "hourIncludeThursday": StringAttributeClass, //
        "hourIncludeTuesday": StringAttributeClass, //
        "hourIncludeWednesday": StringAttributeClass, //
        "hoursAvailable": StringAttributeClass, //
        "hourStartTime": StringAttributeClass, //
        "hourUseNonCalendar": StringAttributeClass, //
        "hourValue": StringAttributeClass, //
        "monthlyDayOfWeek": StringAttributeClass, //
        "monthlyWeekInMonth": StringAttributeClass, //
        "timeSpanRelationType": StringAttributeClass, //
        "weeklyDayOfWeek": StringAttributeClass, //
        "weeklyValue": StringAttributeClass, //
        "yearlyDayOfWeek": StringAttributeClass, //
        "yearlyMonthInYear": StringAttributeClass, //
        "yearlyWeekInMonth": StringAttributeClass, //
        "escalationAction": StringAttributeClass, //
        "escalationType": StringAttributeClass, //
        "escalationPathAction": StringAttributeClass, //
        "relationship_WorkflowElementRelationshipId": UUIDAttributeClass, //
        "relationship_ConditionRelationshipId": UUIDAttributeClass, //
        "relationship_HierarchyFilterConditionRelationshipId": UUIDAttributeClass, //
        "relationship_HierarchyStopConditionRelationshipId": UUIDAttributeClass, //
        "backingTable_WorkflowStepTableRelationshipId": UUIDAttributeClass, //
      ])
      .registerPath("workflow_steps");
  }
}
mixin(EntityCalls!("WorkflowStepEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowStepEntity);

  auto entity = WorkflowStepEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}