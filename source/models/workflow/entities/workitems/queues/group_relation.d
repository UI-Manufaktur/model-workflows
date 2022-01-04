module models.system.entities.workflows.workitems.queues.group_relation;

@safe:
import models.system;

static this() {
  createEntities[DWFLWorkItemQueueGroupRelation.namespace] = (Json json) => WFLWorkItemQueueGroupRelation(json); 
  createEntities["wflWorkItemQueueGroupRelation"] = (Json json) => WFLWorkItemQueueGroupRelation(json); 
  createEntities["workItemQueueGroupRelation"] = (Json json) => WFLWorkItemQueueGroupRelation(json); 
}

class DWFLWorkItemQueueGroupRelation : DOOPEntity {
  this() { super();
    this.attributes([
      "WorkflowWorkitemQueue": OOPAttributeString.descriptions(["en":""]),
      "WorkflowWorkitemQueueGroup": OOPAttributeString.descriptions(["en":""]),
      "WorkItemQueueName": OOPAttributeString.descriptions(["en":""]),
      "WorkItemQueueType": OOPAttributeString.descriptions(["en":""]),
      "WorkItemQueueGroupName": OOPAttributeString.descriptions(["en":""]),
      "backingTable_WorkflowWorkItemQueueGroupRelationRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflWorkItemQueueGroupRelation"; }
  override string entityClasses() { return "wflWorkItemQueueGroupRelations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLWorkItemQueueGroupRelation() { return new DWFLWorkItemQueueGroupRelation; } 
auto WFLWorkItemQueueGroupRelation(Json json) { return new DWFLWorkItemQueueGroupRelation(json); } 

unittest {
  version(uim_entities) {
    assert(WFLWorkItemQueueGroupRelation);

  auto entity = WFLWorkItemQueueGroupRelation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}