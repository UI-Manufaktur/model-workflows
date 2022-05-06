module models.workflows.entities.steps.message;

@safe:
import models.workflows;

class DWorkflowStepMessageEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowStepMessageEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "languageId": UUIDAttribute, //
        "text": StringAttribute, //
        "stepId": UUIDAttribute, // wflStep").descriptions(["en":""]),
        "relationship_WorkflowStepRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowMessageTextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_stepmessages");
  }
}
mixin(EntityCalls!("WorkflowStepMessageEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowStepMessageEntity);

  auto entity = WorkflowStepMessageEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}