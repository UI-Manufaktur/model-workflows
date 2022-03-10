module models.workflows.entities.versions.notifications.message;

@safe:
import models.workflows;

class DWFLVersionNotificationMessage : DOOPEntity {
  mixin(OOPEntityThis!("WFLVersionNotificationMessage"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "languageId": OOPUUIDAttribute.descriptions(["en":""]),
        "text": OOPStringAttribute.descriptions(["en":""]),
        "eorkflowId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_WorkflowVersionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowMessageTextRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_versionnotificationmessages");
  }
}
mixin(OOPEntityCalls!("WFLVersionNotificationMessage"));

version(test_model_workflows) {
  unittest {
    assert(WFLVersionNotificationMessage);

  auto entity = WFLVersionNotificationMessage;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}