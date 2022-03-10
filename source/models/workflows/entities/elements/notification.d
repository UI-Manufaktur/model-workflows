module models.workflows.entities.elements.notification;

@safe:
import models.workflows;

class DWFLElementNotification : DOOPEntity {
  mixin(OOPEntityThis!("WFLElementNotification"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "action": OOPStringAttribute.descriptions(["en":""]),
        "enabled": OOPStringAttribute.descriptions(["en":""]),
        "elementTable": OOPStringAttribute.descriptions(["en":""]),
        "elementId": OOPUUIDAttribute.descriptions(["en":""]),
        "workflowUserValue": OOPStringAttribute.descriptions(["en":""]),
        "assignmentRelationType": OOPStringAttribute.descriptions(["en":""]),
        "assignmentType": OOPStringAttribute.descriptions(["en":""]),
        "hierarchyFilterConditionId": OOPUUIDAttribute.descriptions(["en":""]),
        "hierarchyFilterType": OOPStringAttribute.descriptions(["en":""]),
        "hierarchyProviderName": OOPStringAttribute.descriptions(["en":""]),
        "hierarchyStopConditionId": OOPUUIDAttribute.descriptions(["en":""]),
        "hierarchyTokenName": OOPStringAttribute.descriptions(["en":""]),
        "participantProviderName": OOPStringAttribute.descriptions(["en":""]),
        "participantTokenName": OOPStringAttribute.descriptions(["en":""]),
        "queueProviderName": OOPStringAttribute.descriptions(["en":""]),
        "queueTokenName": OOPStringAttribute.descriptions(["en":""]),
        "userValue": OOPStringAttribute.descriptions(["en":""]),
        "relationship_WorkflowElementRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowElementNotificationTableRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowEscalationPathRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_elementnotifications");
  }
}
mixin(OOPEntityCalls!("WFLElementNotification"));

version(test_model_workflows) {
  unittest {
    assert(WFLElementNotification);

  auto entity = WFLElementNotification;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}