module models.workflows.entities.workitems.queues.assignee;

@safe:
import models.workflows;

class DWorkflowWorkItemQueueAssigneeEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowWorkItemQueueAssigneeEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "isOwner": StringAttribute, //
        "User": StringAttribute, //
        "WorkitemQueue": StringAttribute, //
        "WorkItemQueueName": StringAttribute, //
        "WorkItemQueueType": StringAttribute, //
        "backingTable_WorkflowWorkItemQueueAssigneeRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_workitemqueueassignees");
  }
}
mixin(EntityCalls!("WorkflowWorkItemQueueAssigneeEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowWorkItemQueueAssigneeEntity);

  auto entity = WorkflowWorkItemQueueAssigneeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}