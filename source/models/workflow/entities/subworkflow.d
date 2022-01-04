module models.system.entities.workflows.subworkflow;

@safe:
import models.system;

static this() {
  createEntities[DWFLSubworkflow.namespace] = (Json json) => WFLSubworkflow(json); 
  createEntities["wflSubworkflow"] = (Json json) => WFLSubworkflow(json); 
  createEntities["subworkflow"] = (Json json) => WFLSubworkflow(json); 
}

class DWFLSubworkflow : DOOPEntity {
  this() { super();
    this.attributes([
      "DocumentKeyField": OOPAttributeString.descriptions(["en":""]),
      "DocumentKeyTable": OOPAttributeString.descriptions(["en":""]),
      "ElementId": OOPAttributeUUID.descriptions(["en":""]),
      "ElementName": OOPAttributeString.descriptions(["en":""]),
      "ElementType": OOPAttributeString.descriptions(["en":""]),
      "LineItemType": OOPAttributeString.descriptions(["en":""]),
      "ParallelBranchElementId": OOPAttributeUUID.descriptions(["en":""]),
      "ParallelBranchName": OOPAttributeString.descriptions(["en":""]),
      "WaitForComplete": OOPAttributeString.descriptions(["en":""]),
      "WorkflowNumber": OOPAttributeString.descriptions(["en":""]),
      "WorkflowId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_WorkflowVersionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_WorkflowParallelBranchRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowSubWorkflowRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflSubworkflow"; }
  override string entityClasses() { return "wflSubworkflows"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLSubworkflow() { return new DWFLSubworkflow; } 
auto WFLSubworkflow(Json json) { return new DWFLSubworkflow(json); } 

unittest {
  version(uim_entities) {
    assert(WFLSubworkflow);

  auto entity = WFLSubworkflow;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}