module models.workflows.entities.elements.notifications.message;

@safe:
import models.workflows;

class DWorkflowElementNotificationMessageEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowElementNotificationMessageEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "LanguageId": UUIDAttributeClass, // 
        "Text": StringAttributeClass, // 
        "ElementLinkSequence": StringAttributeClass, // 
        "ElementLinkSourceElementId": UUIDAttributeClass, // 
        "ElementLinkTargetElementId": UUIDAttributeClass, // 
        "ElementOutcome": StringAttributeClass, // 
        "Relationship_WorkflowElementNotificationMessageRelationshipId": UUIDAttributeClass, // 
        "backingTable_WorkflowMessageTextRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("workflow_elementnotificationmessages");
  }
}
mixin(EntityCalls!("WorkflowElementNotificationMessageEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowElementNotificationMessageEntity);

  auto entity = WorkflowElementNotificationMessageEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
