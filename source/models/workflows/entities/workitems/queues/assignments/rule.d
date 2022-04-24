module models.workflows.entities.workitems.queues.assignments.rule;

@safe:
import models.workflows;

class DWorkflowWorkItemQueueAssignmentRuleEntity : DOOPEntity {
  mixin(OOPEntityThis!("WorkflowWorkItemQueueAssignmentRuleEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "EvaluationOrder": OOPStringAttribute.descriptions(["en":""]),
        "Expression": OOPStringAttribute.descriptions(["en":""]),
        "WorkflowWorkItemQueue": OOPStringAttribute.descriptions(["en":""]),
        "WorkFlowWorkItemQueueExpressionDef": OOPStringAttribute.descriptions(["en":""]),
        "ExpressionId": OOPUUIDAttribute.descriptions(["en":""]),
        "WorkItemQueueName": OOPStringAttribute.descriptions(["en":""]),
        "WorkItemQueueType": OOPStringAttribute.descriptions(["en":""]),
        "WorkItemType": OOPStringAttribute.descriptions(["en":""]),
        "backingTable_WorkflowWorkItemQueueExpressionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_workitemqueueassignmentrules");
  }
}
mixin(OOPEntityCalls!("WorkflowWorkItemQueueAssignmentRuleEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowWorkItemQueueAssignmentRuleEntity);

  auto entity = WorkflowWorkItemQueueAssignmentRuleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}