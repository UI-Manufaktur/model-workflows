module models.workflows.entities.elements.outcome_message;

@safe:
import models.workflows;

class DWorkflowElementOutcomeMessageEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowElementOutcomeMessageEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ChannelId": UUIDAttributeClass, // "]),
        "ChannelDatabaseId": UUIDAttributeClass, // "]),
        "backingTable_WorkflowElementOutcomeMessageRelationshipId": UUIDAttributeClass, // "]),
      ])
      .registerPath("workflow_elementoutcomemessages");
  }
}
mixin(EntityCalls!("WorkflowElementOutcomeMessageEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowElementOutcomeMessageEntity);

  auto entity = WorkflowElementOutcomeMessageEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}