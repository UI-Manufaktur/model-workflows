module models.workflows.entities.workitems.queues.groups.relation;

@safe:
import models.workflows;

class DWorkflowWorkItemQueueGroupRelationEntity : DOOPEntity {
  mixin(OOPEntityThis!("WorkflowWorkItemQueueGroupRelationEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "workflowWorkitemQueue": OOPStringAttribute.descriptions(["en":""]),
        "workflowWorkitemQueueGroup": OOPStringAttribute.descriptions(["en":""]),
        "workItemQueueName": OOPStringAttribute.descriptions(["en":""]),
        "workItemQueueType": OOPStringAttribute.descriptions(["en":""]),
        "workItemQueueGroupName": OOPStringAttribute.descriptions(["en":""]),
        "backingTable_WorkflowWorkItemQueueGroupRelationRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_workitemqueuegrouprelations");
  }
}
mixin(OOPEntityCalls!("WorkflowWorkItemQueueGroupRelationEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowWorkItemQueueGroupRelationEntity);

  auto entity = WorkflowWorkItemQueueGroupRelationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}