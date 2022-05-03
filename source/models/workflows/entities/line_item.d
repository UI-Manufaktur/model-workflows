module models.workflows.entities.line_item;

@safe:
import models.workflows;

class DWorkflowLineItemEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowLineItemEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "sequence": StringAttributeClass, //
        "expressionId": UUIDAttributeClass, //
        "elementId": UUIDAttributeClass, //
        "workflowNumber": StringAttributeClass, //
        "relationship_WorkflowSubworkflowRelationshipId": UUIDAttributeClass, //
        "relationship_ConditionRelationshipId": UUIDAttributeClass, //
        "backingTable_WorkflowSubWorkflowItemRelationshipId": UUIDAttributeClass, //
      ])
      .registerPath("workflow_lineitems");
  }
}
mixin(EntityCalls!("WorkflowLineItemEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowLineItemEntity);

  auto entity = WorkflowLineItemEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}