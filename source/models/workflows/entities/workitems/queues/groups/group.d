module models.workflows.entities.workitems.queues.groups.group;

@safe:
import models.workflows;

class DWorkflowWorkItemQueueGroupEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowWorkItemQueueGroupEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "backingTable_WorkflowWorkItemQueueGroupRelationshipId": UUIDAttributeClass, //
      ])
      .registerPath("workflow_workitemqueuegroups");
  }
}
mixin(EntityCalls!("WorkflowWorkItemQueueGroupEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowWorkItemQueueGroupEntity);

  auto entity = WorkflowWorkItemQueueGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}