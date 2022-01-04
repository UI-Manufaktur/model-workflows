module models.system.entities.workflows.line_item;

@safe:
import models.system;

static this() {
  createEntities[DWFLLineItem.namespace] = (Json json) => WFLLineItem(json); 
  createEntities["wflLineItem"] = (Json json) => WFLLineItem(json); 
  createEntities["lineItem"] = (Json json) => WFLLineItem(json); 
}

class DWFLLineItem : DOOPEntity {
  this() { super();
    this.attributes([
      "sequence": OOPAttributeString.descriptions(["en":""]),
      "expressionId": OOPAttributeUUID.descriptions(["en":""]),
      "elementId": OOPAttributeUUID.descriptions(["en":""]),
      "workflowNumber": OOPAttributeString.descriptions(["en":""]),
      "relationship_WorkflowSubworkflowRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_ConditionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowSubWorkflowItemRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflLineItem"; }
  override string entityClasses() { return "wflLineItems"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLLineItem() { return new DWFLLineItem; } 
auto WFLLineItem(Json json) { return new DWFLLineItem(json); } 

unittest {
  version(uim_entities) {
    assert(WFLLineItem);

  auto entity = WFLLineItem;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}