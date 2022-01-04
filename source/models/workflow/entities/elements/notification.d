module models.system.entities.workflows.elements.notification;

@safe:
import models.system;

static this() {
  createEntities[DWFLElementNotification.namespace] = (Json json) => WFLElementNotification(json); 
  createEntities["wflElementNotification"] = (Json json) => WFLElementNotification(json); 
  createEntities["ElementNotification"] = (Json json) => WFLElementNotification(json); 
}

class DWFLElementNotification : DOOPEntity {
  this() { super();
    this.attributes([
      "action": OOPAttributeString.descriptions(["en":""]),
      "enabled": OOPAttributeString.descriptions(["en":""]),
      "elementTable": OOPAttributeString.descriptions(["en":""]),
      "elementId": OOPAttributeUUID.descriptions(["en":""]),
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
      "userValue": OOPAttributeString.descriptions(["en":""]),
      "relationship_WorkflowElementRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowElementNotificationTableRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityPath() { return "workflow/element-notification"; }
  override string entityClass() { return "wflElementNotification"; }
  override string entityClasses() { return "wflElementNotifications"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLElementNotification() { return new DWFLElementNotification; } 
auto WFLElementNotification(Json json) { return new DWFLElementNotification(json); } 

unittest {
  version(uim_entities) {
    assert(WFLElementNotification);

  auto entity = WFLElementNotification;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}