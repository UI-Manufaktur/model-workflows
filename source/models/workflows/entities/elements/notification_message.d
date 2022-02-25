module models.workflows.entities.elements.notification_message;

@safe:
import models.workflows;

class DWFLElementNotificationMessage : DOOPEntity {
  mixin(OOPEntityThis!("WFLElementNotificationMessage"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "LanguageId": OOPUUIDAttribute.descriptions(["en":""]),
        "Text": OOPStringAttribute.descriptions(["en":""]),
        "ElementLinkSequence": OOPStringAttribute.descriptions(["en":""]),
        "ElementLinkSourceElementId": OOPUUIDAttribute.descriptions(["en":""]),
        "ElementLinkTargetElementId": OOPUUIDAttribute.descriptions(["en":""]),
        "ElementOutcome": OOPStringAttribute.descriptions(["en":""]),
        "Relationship_WorkflowElementNotificationMessageRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowMessageTextRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_elementnotificationmessages");
  }
}
mixin(OOPEntityCalls!("WFLElementNotificationMessage"));

version(test_model_workflows) {
  unittest {
    assert(WFLElementNotificationMessage);

  auto entity = WFLElementNotificationMessage;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
