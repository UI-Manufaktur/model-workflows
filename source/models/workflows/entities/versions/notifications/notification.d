module models.workflows.entities.versions.notifications.notification;

@safe:
import models.workflows;

class DWorkflowVersionNotificationEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowVersionNotificationEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Action": StringAttribute, //
        "Enabled": StringAttribute, //
        "WorkflowId": UUIDAttribute, //
        "WorkflowUserValue": StringAttribute, //
        "AssignmentRelationType": StringAttribute, //
        "AssignmentType": StringAttribute, //
        "HierarchyFilterConditionId": UUIDAttribute, //
        "HierarchyFilterType": StringAttribute, //
        "HierarchyProviderName": StringAttribute, //
        "HierarchyStopConditionId": UUIDAttribute, //
        "HierarchyTokenName": StringAttribute, //
        "ParticipantProviderName": StringAttribute, //
        "ParticipantTokenName": StringAttribute, //
        "QueueProviderName": StringAttribute, //
        "QueueTokenName": StringAttribute, //
        "UserValue": StringAttribute, //
        "Relationship_WorkflowVersionRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowVersionNotificationTableRelationshipId": UUIDAttribute, //
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