module models.workflows.entities.elements.action;

@safe:
import models.workflows;

class DWorkflowElementActionEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowElementActionEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "enabled": StringAttribute, // 
        "isOutcome": StringAttribute, // 
        "ElementId": ElementIdAttribute, // 
        "relationship_WorkflowElementRelationshipId": UUIDAttribute, // 
        "backingTable_WorkflowActionTableRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("workflow_elementactions");
  }
}
mixin(EntityCalls!("WorkflowElementActionEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowElementActionEntity);

  auto entity = WorkflowElementActionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}