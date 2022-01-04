module models.system.entities.workflows.workitems.queues.queue;

@safe:
import models.system;

static this() {
  createEntities[DWFLWorkItemQueue.namespace] = (Json json) => WFLWorkItemQueue(json); 
  createEntities["wflWorkItemQueue"] = (Json json) => WFLWorkItemQueue(json); 
  createEntities["workItemQueue"] = (Json json) => WFLWorkItemQueue(json); 
}

class DWFLWorkItemQueue : DOOPEntity {
  this() { super();
    this.attributes([
      "Status": OOPAttributeString.descriptions(["en":""]),
      "WorkItemType": OOPAttributeString.descriptions(["en":""]),
      "WorkItemTypeFriendlyName": OOPAttributeString.descriptions(["en":""]),
      "backingTable_WorkflowWorkItemQueueRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflWorkItemQueue"; }
  override string entityClasses() { return "wflWorkItemQueues"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLWorkItemQueue() { return new DWFLWorkItemQueue; } 
auto WFLWorkItemQueue(Json json) { return new DWFLWorkItemQueue(json); } 

unittest {
  version(uim_entities) {
    assert(WFLWorkItemQueue);

  auto entity = WFLWorkItemQueue;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}