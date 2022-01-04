module models.system.entities.workflows.elements.notification_message;

@safe:
import models.system;

static this() {
  createEntities[DWFLElementNotificationMessage.namespace] = (Json json) => WFLElementNotificationMessage(json); 
  createEntities["wflElementNotificationMessage"] = (Json json) => WFLElementNotificationMessage(json); 
  createEntities["ElementNotificationMessage"] = (Json json) => WFLElementNotificationMessage(json); 
}

class DWFLElementNotificationMessage : DOOPEntity {
  this() { super();
    this.attributes([
      "LanguageId": OOPAttributeUUID.descriptions(["en":""]),
      "Text": OOPAttributeString.descriptions(["en":""]),
      "ElementLinkSequence": OOPAttributeString.descriptions(["en":""]),
      "ElementLinkSourceElementId": OOPAttributeUUID.descriptions(["en":""]),
      "ElementLinkTargetElementId": OOPAttributeUUID.descriptions(["en":""]),
      "ElementOutcome": OOPAttributeString.descriptions(["en":""]),
      "Relationship_WorkflowElementNotificationMessageRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowMessageTextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityPath() { return "workflow/element-notification-message"; }
  override string entityClass() { return "wflElementNotificationMessage"; }
  override string entityClasses() { return "wflElementNotificationMessages"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLElementNotificationMessage() { return new DWFLElementNotificationMessage; } 
auto WFLElementNotificationMessage(Json json) { return new DWFLElementNotificationMessage(json); } 

unittest {
  version(uim_entities) {
    assert(WFLElementNotificationMessage);

  auto entity = WFLElementNotificationMessage;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
