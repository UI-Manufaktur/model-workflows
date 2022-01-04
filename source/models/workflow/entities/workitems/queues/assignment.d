module models.system.entities.workflows.workitems.queues.assignment;

@safe:
import models.system;

static this() {
  createEntities[DWFLWorkItemQueueAssignment.namespace] = (Json json) => WFLWorkItemQueueAssignment(json); 
  createEntities["wflWorkItemQueueAssignment"] = (Json json) => WFLWorkItemQueueAssignment(json); 
  createEntities["workItemQueueAssignment"] = (Json json) => WFLWorkItemQueueAssignment(json); 
}

class DWFLWorkItemQueueAssignment : DOOPEntity {
  this() { super();
    this.attributes([
      "defaultQueueId": OOPAttributeLink("queue").descriptions(["en":""]),
      "WorkitemType": OOPAttributeString.descriptions(["en":""]),
      "DefaultWorkItemQueueName": OOPAttributeString.descriptions(["en":""]),
      "DefaultWorkItemQueueType": OOPAttributeString.descriptions(["en":""]),
      "backingTable_WorkflowWorkItemQueueExpressionDefRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflWorkItemQueueAssignment"; }
  override string entityClasses() { return "wflWorkItemQueueAssignments"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLWorkItemQueueAssignment() { return new DWFLWorkItemQueueAssignment; } 
auto WFLWorkItemQueueAssignment(Json json) { return new DWFLWorkItemQueueAssignment(json); } 

unittest {
  version(uim_entities) {
    assert(WFLWorkItemQueueAssignment);

  auto entity = WFLWorkItemQueueAssignment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}