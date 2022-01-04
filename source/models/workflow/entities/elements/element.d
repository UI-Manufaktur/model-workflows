module models.system.entities.workflows.elements.element;

@safe:
import models.system;

static this() {
  createEntities[DWFLElement.namespace] = (Json json) => WFLElement(json); 
  createEntities["wflElement"] = (Json json) => WFLElement(json); 
  createEntities["Element"] = (Json json) => WFLElement(json); 
}

class DWFLElement : DOOPEntity {
  this() { super();
    this.attributes([
      "conditionId": OOPAttributeUUID.descriptions(["en":""]),
      "autoCompleteAction": OOPAttributeString.descriptions(["en":""]),
      "autoCompleteConditionId": OOPAttributeUUID.descriptions(["en":""]),
      "workflowId": OOPAttributeUUID.descriptions(["en":""]),
      "elementId": OOPAttributeUUID.descriptions(["en":""]),
      "elementName": OOPAttributeString.descriptions(["en":""]),
      "elementType": OOPAttributeString.descriptions(["en":""]),
      "enableActionsInWorkList": OOPAttributeString.descriptions(["en":""]),
      "runSubworkflow": OOPAttributeString.descriptions(["en":""]),
      "runSubworkflowConditionId": OOPAttributeUUID.descriptions(["en":""]),
      "finalApproverUser": OOPAttributeString.descriptions(["en":""]),
      "required": OOPAttributeString.descriptions(["en":""]),
      "runInParallel": OOPAttributeString.descriptions(["en":""]),
      "sequence": OOPAttributeString.descriptions(["en":""]),
      "enableAutoComplete": OOPAttributeString.descriptions(["en":""]),
      "enableFinalApprover": OOPAttributeString.descriptions(["en":""]),
      "enableMaximumRuntime": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeOutcome": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeTime": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeTimeZone": OOPAttributeString.descriptions(["en":""]),
      "parallelBranchName": OOPAttributeString.descriptions(["en":""]),
      "parallelBranchElementId": OOPAttributeUUID.descriptions(["en":""]),
      "maximumRuntimeDailyCalendar": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeDailyCalendarProvider": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeDailyIncludeFriday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeDailyIncludeMonday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeDailyIncludeSaturday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeDailyIncludeSunday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeDailyIncludeThursday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeDailyIncludeTuesday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeDailyIncludeWednesday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeDailyUseNonCalendar": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeDailyValue": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeDateType": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourCalendar": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourCalendarProvider": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourIncludeFriday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourIncludeMonday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourIncludeSaturday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourIncludeSunday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourIncludeThursday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourIncludeTuesday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourIncludeWednesday": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHoursAvailable": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourStartTime": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourUseNonCalendar": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeHourValue": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeMonthlyDayOfWeek": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeMonthlyWeekInMonth": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeTimeSpanRelationType": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeWeeklyDayOfWeek": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeWeeklyValue": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeYearlyDayOfWeek": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeYearlyMonthInYear": OOPAttributeString.descriptions(["en":""]),
      "maximumRuntimeYearlyWeekInMonth": OOPAttributeString.descriptions(["en":""]),
      "relationship_WorkflowVersionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_ParallelBranchRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_SubworkflowConditionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_AutoCompleteConditionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_ConditionalDecisionConditionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowElementTableRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityPath() { return "workflow/element"; }
  override string entityClass() { return "wflElement"; }
  override string entityClasses() { return "wflElements"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLElement() { return new DWFLElement; } 
auto WFLElement(Json json) { return new DWFLElement(json); } 

unittest {
  version(uim_entities) {
    assert(WFLElement);

  auto entity = WFLElement;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}