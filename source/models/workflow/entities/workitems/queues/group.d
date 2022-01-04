module models.system.entities.workflows.workitems.queues.group;

@safe:
import models.system;

static this() {
  createEntities[DWFLWorkItemQueueGroup.namespace] = (Json json) => WFLWorkItemQueueGroup(json); 
  createEntities["wflWorkItemQueueGroup"] = (Json json) => WFLWorkItemQueueGroup(json); 
  createEntities["workItemQueueGroup"] = (Json json) => WFLWorkItemQueueGroup(json); 
}

class DWFLWorkItemQueueGroup : DOOPEntity {
  this() { super();
    this.attributes([
      "backingTable_WorkflowWorkItemQueueGroupRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflWorkItemQueueGroup"; }
  override string entityClasses() { return "wflWorkItemQueueGroups"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLWorkItemQueueGroup() { return new DWFLWorkItemQueueGroup; } 
auto WFLWorkItemQueueGroup(Json json) { return new DWFLWorkItemQueueGroup(json); } 

unittest {
  version(uim_entities) {
    assert(WFLWorkItemQueueGroup);

  auto entity = WFLWorkItemQueueGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}