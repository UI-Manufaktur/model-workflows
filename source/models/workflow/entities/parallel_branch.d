module models.system.entities.workflows.parallel_branch;

@safe:
import models.system;

static this() {
  createEntities[DWFLParallelBranch.namespace] = (Json json) => WFLParallelBranch(json); 
  createEntities["wflParallelBranch"] = (Json json) => WFLParallelBranch(json); 
  createEntities["parallelBranch"] = (Json json) => WFLParallelBranch(json); 
}

class DWFLParallelBranch : DOOPEntity {
  this() { super();
    this.attributes([
      "ElementId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_WorkflowElementRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowParallelBranchTableRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflParallelBranch"; }
  override string entityClasses() { return "wflParallelBranchs"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLParallelBranch() { return new DWFLParallelBranch; } 
auto WFLParallelBranch(Json json) { return new DWFLParallelBranch(json); } 

unittest {
  version(uim_entities) {
    assert(WFLParallelBranch);

  auto entity = WFLParallelBranch;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}