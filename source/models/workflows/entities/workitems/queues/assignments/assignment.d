module models.workflows.entities.workitems.queues.assignments.assignment;

@safe:
import models.workflows;

class DWorkflowWorkItemQueueAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowWorkItemQueueAssignmentEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "defaultQueueId": UUIDAttribute, // queue").descriptions(["en":""]),
        "WorkitemType": StringAttribute, //
        "DefaultWorkItemQueueName": StringAttribute, //
        "DefaultWorkItemQueueType": StringAttribute, //
        "backingTable_WorkflowWorkItemQueueExpressionDefRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_workitemqueueassignments");
  }
}
mixin(EntityCalls!("WorkflowWorkItemQueueAssignmentEntity")); 

version(test_model_workflows) {
  unittest {
    assert(WorkflowWorkItemQueueAssignmentEntity);

  auto entity = WorkflowWorkItemQueueAssignmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}