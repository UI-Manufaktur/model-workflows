module models.workflows.entities.workitems.queues.groups.relation;

@safe:
import models.workflows;

class DWorkflowWorkItemQueueGroupRelationEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowWorkItemQueueGroupRelationEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "workflowWorkitemQueue": StringAttribute, //
        "workflowWorkitemQueueGroup": StringAttribute, //
        "workItemQueueName": StringAttribute, //
        "workItemQueueType": StringAttribute, //
        "workItemQueueGroupName": StringAttribute, //
        "backingTable_WorkflowWorkItemQueueGroupRelationRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_workitemqueuegrouprelations");
  }
}
mixin(EntityCalls!("WorkflowWorkItemQueueGroupRelationEntity"));

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