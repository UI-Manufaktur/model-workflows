module models.workflows.entities.workitems.queues.group;

@safe:
import models.workflows;

class DWFLWorkItemQueueGroup : DOOPEntity {
  mixin(OOPEntityThis!("WFLWorkItemQueueGroup"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "backingTable_WorkflowWorkItemQueueGroupRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_workitemqueuegroups");
  }
}
mixin(OOPEntityCalls!("WFLWorkItemQueueGroup"));

version(test_model_workflows) {
  unittest {
    assert(WFLWorkItemQueueGroup);

  auto entity = WFLWorkItemQueueGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}