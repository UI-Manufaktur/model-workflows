module models.workflows.entities.versions.notifications.notification;

@safe:
import models.workflows;

class DWorkflowVersionNotificationEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowVersionNotificationEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "Action": OOPStringAttribute.descriptions(["en":""]),
        "Enabled": OOPStringAttribute.descriptions(["en":""]),
        "WorkflowId": OOPUUIDAttribute.descriptions(["en":""]),
        "WorkflowUserValue": OOPStringAttribute.descriptions(["en":""]),
        "AssignmentRelationType": OOPStringAttribute.descriptions(["en":""]),
        "AssignmentType": OOPStringAttribute.descriptions(["en":""]),
        "HierarchyFilterConditionId": OOPUUIDAttribute.descriptions(["en":""]),
        "HierarchyFilterType": OOPStringAttribute.descriptions(["en":""]),
        "HierarchyProviderName": OOPStringAttribute.descriptions(["en":""]),
        "HierarchyStopConditionId": OOPUUIDAttribute.descriptions(["en":""]),
        "HierarchyTokenName": OOPStringAttribute.descriptions(["en":""]),
        "ParticipantProviderName": OOPStringAttribute.descriptions(["en":""]),
        "ParticipantTokenName": OOPStringAttribute.descriptions(["en":""]),
        "QueueProviderName": OOPStringAttribute.descriptions(["en":""]),
        "QueueTokenName": OOPStringAttribute.descriptions(["en":""]),
        "UserValue": OOPStringAttribute.descriptions(["en":""]),
        "Relationship_WorkflowVersionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowVersionNotificationTableRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
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