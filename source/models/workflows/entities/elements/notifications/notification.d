module models.workflows.entities.elements.notifications.notification;

@safe:
import models.workflows;

class DWorkflowElementNotificationEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowElementNotificationEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        ElementIdAttribute, // 
      ])
      .addValues([
        "action": StringAttribute, // 
        "enabled": StringAttribute, // 
        "elementTable": StringAttribute, // 
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
        "relationship_WorkflowElementRelationshipId": UUIDAttribute, // 
        "backingTable_WorkflowElementNotificationTableRelationshipId": UUIDAttribute, // 
        "backingTable_WorkflowEscalationPathRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("workflow_elementnotifications");
  }
}
mixin(EntityCalls!("WorkflowElementNotificationEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowElementNotificationEntity);

  auto entity = WorkflowElementNotificationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}