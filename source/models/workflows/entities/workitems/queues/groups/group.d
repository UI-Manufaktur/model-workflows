module models.workflows.entities.workitems.queues.group;

@safe:
import models.workflows;

class DWorkflowWorkItemQueueGroupEntity : DOOPEntity {
  mixin(OOPEntityThis!("WorkflowWorkItemQueueGroupEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "backingTable_WorkflowWorkItemQueueGroupRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_workitemqueuegroups");
  }
}
mixin(OOPEntityCalls!("WorkflowWorkItemQueueGroupEntity"));

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