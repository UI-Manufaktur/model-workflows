module models.system.entities.workflows.versions.notifications.message;

@safe:
import models.system;

static this() {
  createEntities[DWFLVersionNotificationMessage.namespace] = (Json json) => WFLVersionNotificationMessage(json); 
  createEntities["wflVersionNotificationMessage"] = (Json json) => WFLVersionNotificationMessage(json); 
  createEntities["VersionNotificationMessage"] = (Json json) => WFLVersionNotificationMessage(json); 
}

class DWFLVersionNotificationMessage : DOOPEntity {
  this() { super();
    this.attributes([
      "languageId": OOPAttributeUUID.descriptions(["en":""]),
      "text": OOPAttributeString.descriptions(["en":""]),
      "eorkflowId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_WorkflowVersionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowMessageTextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflVersionNotificationMessage"; }
  override string entityClasses() { return "wflVersionNotificationMessages"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLVersionNotificationMessage() { return new DWFLVersionNotificationMessage; } 
auto WFLVersionNotificationMessage(Json json) { return new DWFLVersionNotificationMessage(json); } 

unittest {
  version(uim_entities) {
    assert(WFLVersionNotificationMessage);

  auto entity = WFLVersionNotificationMessage;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}