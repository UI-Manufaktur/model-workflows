module models.workflows.entities.versions.notifications.notification;

@safe:
import models.workflows;

class DWorkflowVersionNotificationEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowVersionNotificationEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Action": StringAttributeClass, //
        "Enabled": StringAttributeClass, //
        "WorkflowId": UUIDAttributeClass, //
        "WorkflowUserValue": StringAttributeClass, //
        "AssignmentRelationType": StringAttributeClass, //
        "AssignmentType": StringAttributeClass, //
        "HierarchyFilterConditionId": UUIDAttributeClass, //
        "HierarchyFilterType": StringAttributeClass, //
        "HierarchyProviderName": StringAttributeClass, //
        "HierarchyStopConditionId": UUIDAttributeClass, //
        "HierarchyTokenName": StringAttributeClass, //
        "ParticipantProviderName": StringAttributeClass, //
        "ParticipantTokenName": StringAttributeClass, //
        "QueueProviderName": StringAttributeClass, //
        "QueueTokenName": StringAttributeClass, //
        "UserValue": StringAttributeClass, //
        "Relationship_WorkflowVersionRelationshipId": UUIDAttributeClass, //
        "backingTable_WorkflowVersionNotificationTableRelationshipId": UUIDAttributeClass, //
      ])
      .registerPath("workflow_versionnotifications");
  }
}
mixin(EntityCalls!("WorkflowVersionNotificationEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowVersionNotificationEntity);

  auto entity = WorkflowVersionNotificationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}