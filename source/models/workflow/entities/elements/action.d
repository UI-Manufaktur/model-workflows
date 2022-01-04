module models.system.entities.workflows.elements.action;

@safe:
import models.system;

static this() {
  createEntities[DWFLElementAction.namespace] = (Json json) => WFLElementAction(json); 
  createEntities["wflElementAction"] = (Json json) => WFLElementAction(json); 
  createEntities["ElementAction"] = (Json json) => WFLElementAction(json); 
}

class DWFLElementAction : DOOPEntity {
  this() { super();
    this.attributes([
      "enabled": OOPAttributeString.descriptions(["en":""]),
      "isOutcome": OOPAttributeString.descriptions(["en":""]),
      "elementId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_WorkflowElementRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowActionTableRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityPath() { return "workflow/element-action"; }
  override string entityClass() { return "wflElementAction"; }
  override string entityClasses() { return "wflElementActions"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLElementAction() { return new DWFLElementAction; } 
auto WFLElementAction(Json json) { return new DWFLElementAction(json); } 

unittest {
  version(uim_entities) {
    assert(WFLElementAction);

  auto entity = WFLElementAction;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}