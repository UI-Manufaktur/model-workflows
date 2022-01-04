module models.system.entities.workflows.workitems.queues.assignment_rule;

@safe:
import models.system;

static this() {
  createEntities[DWFLWorkItemQueueAssignmentRule.namespace] = (Json json) => WFLWorkItemQueueAssignmentRule(json); 
  createEntities["wflWorkItemQueueAssignmentRule"] = (Json json) => WFLWorkItemQueueAssignmentRule(json); 
  createEntities["workItemQueueAssignmentRule"] = (Json json) => WFLWorkItemQueueAssignmentRule(json); 
}

class DWFLWorkItemQueueAssignmentRule : DOOPEntity {
  this() { super();
    this.attributes([
      "EvaluationOrder": OOPAttributeString.descriptions(["en":""]),
      "Expression": OOPAttributeString.descriptions(["en":""]),
      "WorkflowWorkItemQueue": OOPAttributeString.descriptions(["en":""]),
      "WorkFlowWorkItemQueueExpressionDef": OOPAttributeString.descriptions(["en":""]),
      "ExpressionId": OOPAttributeUUID.descriptions(["en":""]),
      "WorkItemQueueName": OOPAttributeString.descriptions(["en":""]),
      "WorkItemQueueType": OOPAttributeString.descriptions(["en":""]),
      "WorkItemType": OOPAttributeString.descriptions(["en":""]),
      "backingTable_WorkflowWorkItemQueueExpressionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflWorkItemQueueAssignmentRule"; }
  override string entityClasses() { return "wflWorkItemQueueAssignmentRules"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLWorkItemQueueAssignmentRule() { return new DWFLWorkItemQueueAssignmentRule; } 
auto WFLWorkItemQueueAssignmentRule(Json json) { return new DWFLWorkItemQueueAssignmentRule(json); } 

unittest {
  version(uim_entities) {
    assert(WFLWorkItemQueueAssignmentRule);

  auto entity = WFLWorkItemQueueAssignmentRule;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}