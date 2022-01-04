module models.system.entities.workflows.versions.notifications.notification;

@safe:
import models.system;

static this() {
  createEntities[DWFLVersionNotification.namespace] = (Json json) => WFLVersionNotification(json); 
  createEntities["wflVersionNotification"] = (Json json) => WFLVersionNotification(json); 
  createEntities["VersionNotification"] = (Json json) => WFLVersionNotification(json); 
}

class DWFLVersionNotification : DOOPEntity {
  this() { super();
    this.attributes([
      "Action": OOPAttributeString.descriptions(["en":""]),
      "Enabled": OOPAttributeString.descriptions(["en":""]),
      "WorkflowId": OOPAttributeUUID.descriptions(["en":""]),
      "WorkflowUserValue": OOPAttributeString.descriptions(["en":""]),
      "AssignmentRelationType": OOPAttributeString.descriptions(["en":""]),
      "AssignmentType": OOPAttributeString.descriptions(["en":""]),
      "HierarchyFilterConditionId": OOPAttributeUUID.descriptions(["en":""]),
      "HierarchyFilterType": OOPAttributeString.descriptions(["en":""]),
      "HierarchyProviderName": OOPAttributeString.descriptions(["en":""]),
      "HierarchyStopConditionId": OOPAttributeUUID.descriptions(["en":""]),
      "HierarchyTokenName": OOPAttributeString.descriptions(["en":""]),
      "ParticipantProviderName": OOPAttributeString.descriptions(["en":""]),
      "ParticipantTokenName": OOPAttributeString.descriptions(["en":""]),
      "QueueProviderName": OOPAttributeString.descriptions(["en":""]),
      "QueueTokenName": OOPAttributeString.descriptions(["en":""]),
      "UserValue": OOPAttributeString.descriptions(["en":""]),
      "Relationship_WorkflowVersionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowVersionNotificationTableRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflVersionNotification"; }
  override string entityClasses() { return "wflVersionNotifications"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLVersionNotification() { return new DWFLVersionNotification; } 
auto WFLVersionNotification(Json json) { return new DWFLVersionNotification(json); } 

unittest {
  version(uim_entities) {
    assert(WFLVersionNotification);

  auto entity = WFLVersionNotification;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}