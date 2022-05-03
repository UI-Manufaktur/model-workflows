module models.workflows.entities.workitems.queues.assignments.assignment;

@safe:
import models.workflows;

class DWorkflowWorkItemQueueAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowWorkItemQueueAssignmentEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "defaultQueueId": OOPLinkAttribute("queue").descriptions(["en":""]),
        "WorkitemType": OOPStringAttribute.descriptions(["en":""]),
        "DefaultWorkItemQueueName": OOPStringAttribute.descriptions(["en":""]),
        "DefaultWorkItemQueueType": OOPStringAttribute.descriptions(["en":""]),
        "backingTable_WorkflowWorkItemQueueExpressionDefRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
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