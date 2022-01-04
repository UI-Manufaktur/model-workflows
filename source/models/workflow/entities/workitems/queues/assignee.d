module models.system.entities.workflows.workitems.queues.assignee;

@safe:
import models.system;

static this() {
  createEntities[DWFLWorkItemQueueAssignee.namespace] = (Json json) => WFLWorkItemQueueAssignee(json); 
  createEntities["wflWorkItemQueueAssignee"] = (Json json) => WFLWorkItemQueueAssignee(json); 
  createEntities["workItemQueueAssignee"] = (Json json) => WFLWorkItemQueueAssignee(json); 
}

class DWFLWorkItemQueueAssignee : DOOPEntity {
  this() { super();
    this.attributes([
      "isOwner": OOPAttributeString.descriptions(["en":""]),
      "User": OOPAttributeString.descriptions(["en":""]),
      "WorkitemQueue": OOPAttributeString.descriptions(["en":""]),
      "WorkItemQueueName": OOPAttributeString.descriptions(["en":""]),
      "WorkItemQueueType": OOPAttributeString.descriptions(["en":""]),
      "backingTable_WorkflowWorkItemQueueAssigneeRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflWorkItemQueueAssignee"; }
  override string entityClasses() { return "wflWorkItemQueueAssignees"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLWorkItemQueueAssignee() { return new DWFLWorkItemQueueAssignee; } 
auto WFLWorkItemQueueAssignee(Json json) { return new DWFLWorkItemQueueAssignee(json); } 

unittest {
  version(uim_entities) {
    assert(WFLWorkItemQueueAssignee);

  auto entity = WFLWorkItemQueueAssignee;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}