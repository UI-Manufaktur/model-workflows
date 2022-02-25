module models.workflows.entities.workitems.queues.assignee;

@safe:
import models.workflows;

class DWFLWorkItemQueueAssignee : DOOPEntity {
  mixin(OOPEntityThis!("WFLWorkItemQueueAssignee"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "isOwner": OOPStringAttribute.descriptions(["en":""]),
        "User": OOPStringAttribute.descriptions(["en":""]),
        "WorkitemQueue": OOPStringAttribute.descriptions(["en":""]),
        "WorkItemQueueName": OOPStringAttribute.descriptions(["en":""]),
        "WorkItemQueueType": OOPStringAttribute.descriptions(["en":""]),
        "backingTable_WorkflowWorkItemQueueAssigneeRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_workitemqueueassignees");
  }
}
mixin(OOPEntityCalls!("WFLWorkItemQueueAssignee"));

version(test_model_workflows) {
  unittest {
    assert(WFLWorkItemQueueAssignee);

  auto entity = WFLWorkItemQueueAssignee;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}