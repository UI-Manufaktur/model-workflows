module models.system.entities.workflows.steps.step;

@safe:
import models.system;

static this() {
  createEntities[DWFLStep.namespace] = (Json json) => WFLStep(json); 
  createEntities["wflStep"] = (Json json) => WFLStep(json); 
  createEntities["Step"] = (Json json) => WFLStep(json); 
}

class DWFLStep : DOOPEntity {
  this() { super();
    this.attributes([
      "completionPolicy": OOPAttributeString.descriptions(["en":""]),
      "completionPolicyPercentage": OOPAttributeString.descriptions(["en":""]),
      "elementId": OOPAttributeUUID.descriptions(["en":""]),
      "runStep": OOPAttributeString.descriptions(["en":""]),
      "runStepConditionId": OOPAttributeUUID.descriptions(["en":""]),
      "sequence": OOPAttributeString.descriptions(["en":""]),
      "stepId": OOPAttributeLink("wflStep").descriptions(["en":""]),
      "workflowUserValue": OOPAttributeString.descriptions(["en":""]),
      "assignmentRelationType": OOPAttributeString.descriptions(["en":""]),
      "assignmentType": OOPAttributeString.descriptions(["en":""]),
      "hierarchyFilterConditionId": OOPAttributeUUID.descriptions(["en":""]),
      "hierarchyFilterType": OOPAttributeString.descriptions(["en":""]),
      "hierarchyProviderName": OOPAttributeString.descriptions(["en":""]),
      "hierarchyStopConditionId": OOPAttributeUUID.descriptions(["en":""]),
      "hierarchyTokenName": OOPAttributeString.descriptions(["en":""]),
      "participantProviderName": OOPAttributeString.descriptions(["en":""]),
      "participantTokenName": OOPAttributeString.descriptions(["en":""]),
      "queueProviderName": OOPAttributeString.descriptions(["en":""]),
      "queueTokenName": OOPAttributeString.descriptions(["en":""]),
      "iserValue": OOPAttributeString.descriptions(["en":""]),
      "dailyCalendar": OOPAttributeString.descriptions(["en":""]),
      "dailyCalendarProvider": OOPAttributeString.descriptions(["en":""]),
      "dailyIncludeFriday": OOPAttributeString.descriptions(["en":""]),
      "dailyIncludeMonday": OOPAttributeString.descriptions(["en":""]),
      "dailyIncludeSaturday": OOPAttributeString.descriptions(["en":""]),
      "dailyIncludeSunday": OOPAttributeString.descriptions(["en":""]),
      "dailyIncludeThursday": OOPAttributeString.descriptions(["en":""]),
      "dailyIncludeTuesday": OOPAttributeString.descriptions(["en":""]),
      "dailyIncludeWednesday": OOPAttributeString.descriptions(["en":""]),
      "dailyUseNonCalendar": OOPAttributeString.descriptions(["en":""]),
      "dailyValue": OOPAttributeString.descriptions(["en":""]),
      "dateType": OOPAttributeString.descriptions(["en":""]),
      "hourCalendar": OOPAttributeString.descriptions(["en":""]),
      "hourCalendarProvider": OOPAttributeString.descriptions(["en":""]),
      "hourIncludeFriday": OOPAttributeString.descriptions(["en":""]),
      "hourIncludeMonday": OOPAttributeString.descriptions(["en":""]),
      "hourIncludeSaturday": OOPAttributeString.descriptions(["en":""]),
      "hourIncludeSunday": OOPAttributeString.descriptions(["en":""]),
      "hourIncludeThursday": OOPAttributeString.descriptions(["en":""]),
      "hourIncludeTuesday": OOPAttributeString.descriptions(["en":""]),
      "hourIncludeWednesday": OOPAttributeString.descriptions(["en":""]),
      "hoursAvailable": OOPAttributeString.descriptions(["en":""]),
      "hourStartTime": OOPAttributeString.descriptions(["en":""]),
      "hourUseNonCalendar": OOPAttributeString.descriptions(["en":""]),
      "hourValue": OOPAttributeString.descriptions(["en":""]),
      "monthlyDayOfWeek": OOPAttributeString.descriptions(["en":""]),
      "monthlyWeekInMonth": OOPAttributeString.descriptions(["en":""]),
      "timeSpanRelationType": OOPAttributeString.descriptions(["en":""]),
      "weeklyDayOfWeek": OOPAttributeString.descriptions(["en":""]),
      "weeklyValue": OOPAttributeString.descriptions(["en":""]),
      "yearlyDayOfWeek": OOPAttributeString.descriptions(["en":""]),
      "yearlyMonthInYear": OOPAttributeString.descriptions(["en":""]),
      "yearlyWeekInMonth": OOPAttributeString.descriptions(["en":""]),
      "escalationAction": OOPAttributeString.descriptions(["en":""]),
      "escalationType": OOPAttributeString.descriptions(["en":""]),
      "escalationPathAction": OOPAttributeString.descriptions(["en":""]),
      "relationship_WorkflowElementRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_ConditionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_HierarchyFilterConditionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_HierarchyStopConditionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowStepTableRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityPath() { return "workflow/step"; }
  override string entityClass() { return "wflStep"; }
  override string entityClasses() { return "wflSteps"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLStep() { return new DWFLStep; } 
auto WFLStep(Json json) { return new DWFLStep(json); } 

unittest {
  version(uim_entities) {
    assert(WFLStep);

  auto entity = WFLStep;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}