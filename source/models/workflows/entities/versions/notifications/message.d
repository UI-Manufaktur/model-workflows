module models.workflows.entities.versions.notifications.message;

@safe:
import models.workflows;

class DWorkflowVersionNotificationMessageEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowVersionNotificationMessageEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        LanguageIdAttribute, //
        WorkflowIdAttribute, //
      ])
      .addValues([
        "text": StringAttribute, //
        "relationship_WorkflowVersionRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowMessageTextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_versionnotificationmessages");
  }
}
mixin(EntityCalls!("WorkflowVersionNotificationMessageEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowVersionNotificationMessageEntity);

  auto entity = WorkflowVersionNotificationMessageEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}