module models.workflows.entities.versions.notifications.notification;

@safe:
import models.workflows;

class DWorkflowVersionNotificationEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowVersionNotificationEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        WorkflowIdAttribute, //
      ])
      .addValues([
        "action": StringAttribute, //
        "enabled": StringAttribute, //
        "workflowUserValue": StringAttribute, //
        "assignmentRelationType": StringAttribute, //
        "assignmentType": StringAttribute, //
        "hierarchyFilterConditionId": ConditionIdAttribute, //
        "hierarchyFilterType": StringAttribute, //
        "hierarchyProviderName": StringAttribute, //
        "hierarchyStopConditionId": ConditionIdAttribute, //
        "hierarchyTokenName": StringAttribute, //
        "participantProviderName": StringAttribute, //
        "participantTokenName": StringAttribute, //
        "queueProviderName": StringAttribute, //
        "queueTokenName": StringAttribute, //
        "userValue": StringAttribute, //
        "relationship_WorkflowVersionRelationshipId": UUIDAttribute, //
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