module models.workflows.entities.workitems.queues.groups.relation;

@safe:
import models.workflows;

class DWFLWorkItemQueueGroupRelation : DOOPEntity {
  mixin(OOPEntityThis!("WFLWorkItemQueueGroupRelation"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "WorkflowWorkitemQueue": OOPStringAttribute.descriptions(["en":""]),
        "WorkflowWorkitemQueueGroup": OOPStringAttribute.descriptions(["en":""]),
        "WorkItemQueueName": OOPStringAttribute.descriptions(["en":""]),
        "WorkItemQueueType": OOPStringAttribute.descriptions(["en":""]),
        "WorkItemQueueGroupName": OOPStringAttribute.descriptions(["en":""]),
        "backingTable_WorkflowWorkItemQueueGroupRelationRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_workitemqueuegrouprelations");
  }
}
mixin(OOPEntityCalls!("WFLWorkItemQueueGroupRelation"));

version(test_model_workflows) {
  unittest {
    assert(WFLWorkItemQueueGroupRelation);

  auto entity = WFLWorkItemQueueGroupRelation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}