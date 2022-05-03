module models.workflows.entities.workitems.queues.assignments.rule;

@safe:
import models.workflows;

class DWorkflowWorkItemQueueAssignmentRuleEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowWorkItemQueueAssignmentRuleEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "EvaluationOrder": StringAttributeClass, //
        "Expression": StringAttributeClass, //
        "WorkflowWorkItemQueue": StringAttributeClass, //
        "WorkFlowWorkItemQueueExpressionDef": StringAttributeClass, //
        "ExpressionId": UUIDAttributeClass, //
        "WorkItemQueueName": StringAttributeClass, //
        "WorkItemQueueType": StringAttributeClass, //
        "WorkItemType": StringAttributeClass, //
        "backingTable_WorkflowWorkItemQueueExpressionRelationshipId": UUIDAttributeClass, //
      ])
      .registerPath("workflow_workitemqueueassignmentrules");
  }
}
mixin(EntityCalls!("WorkflowWorkItemQueueAssignmentRuleEntity"));

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