module models.workflows.entities.workitems.queues.queue;

@safe:
import models.workflows;

class DWFLWorkItemQueue : DOOPEntity {
  mixin(EntityThis!("WFLWorkItemQueue"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Status": StringAttributeClass, //
        "WorkItemType": StringAttributeClass, //
        "WorkItemTypeFriendlyName": StringAttributeClass, //
        "backingTable_WorkflowWorkItemQueueRelationshipId": UUIDAttributeClass, //
      ])
      .registerPath("workflow_workitemqueues");
  }
}
mixin(EntityCalls!("WFLWorkItemQueue"));

version(test_model_workflows) {
  unittest {
    assert(WFLWorkItemQueue);

  auto entity = WFLWorkItemQueue;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}