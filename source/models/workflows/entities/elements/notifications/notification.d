module models.workflows.entities.elements.notifications.notification;

@safe:
import models.workflows;

class DWorkflowElementNotificationEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowElementNotificationEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "action": StringAttributeClass, // 
        "enabled": StringAttributeClass, // 
        "elementTable": StringAttributeClass, // 
        "elementId": UUIDAttributeClass, // 
        "workflowUserValue": StringAttributeClass, // 
        "assignmentRelationType": StringAttributeClass, // 
        "assignmentType": StringAttributeClass, // 
        "hierarchyFilterConditionId": UUIDAttributeClass, // 
        "hierarchyFilterType": StringAttributeClass, // 
        "hierarchyProviderName": StringAttributeClass, // 
        "hierarchyStopConditionId": UUIDAttributeClass, // 
        "hierarchyTokenName": StringAttributeClass, // 
        "participantProviderName": StringAttributeClass, // 
        "participantTokenName": StringAttributeClass, // 
        "queueProviderName": StringAttributeClass, // 
        "queueTokenName": StringAttributeClass, // 
        "userValue": StringAttributeClass, // 
        "relationship_WorkflowElementRelationshipId": UUIDAttributeClass, // 
        "backingTable_WorkflowElementNotificationTableRelationshipId": UUIDAttributeClass, // 
        "backingTable_WorkflowEscalationPathRelationshipId": UUIDAttributeClass, // 
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