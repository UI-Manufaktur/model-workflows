module models.system.entities.workflows.elements.outcome_message;

@safe:
import models.system;

static this() {
  createEntities[DWFLElementOutcomeMessage.namespace] = (Json json) => WFLElementOutcomeMessage(json); 
  createEntities["wflElementOutcomeMessage"] = (Json json) => WFLElementOutcomeMessage(json); 
  createEntities["ElementOutcomeMessage"] = (Json json) => WFLElementOutcomeMessage(json); 
}

class DWFLElementOutcomeMessage : DOOPEntity {
  this() { super();
    this.attributes([
      "ChannelId": OOPAttributeUUID.descriptions(["en":""]),
      "ChannelDatabaseId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowElementOutcomeMessageRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityPath() { return "workflow/element-outcome-message"; }
  override string entityClass() { return "wflElementOutcomeMessage"; }
  override string entityClasses() { return "wflElementOutcomeMessages"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLElementOutcomeMessage() { return new DWFLElementOutcomeMessage; } 
auto WFLElementOutcomeMessage(Json json) { return new DWFLElementOutcomeMessage(json); } 

unittest {
  version(uim_entities) {
    assert(WFLElementOutcomeMessage);

  auto entity = WFLElementOutcomeMessage;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}