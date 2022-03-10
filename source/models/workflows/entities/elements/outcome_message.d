module models.workflows.entities.elements.outcome_message;

@safe:
import models.workflows;

class DWFLElementOutcomeMessage : DOOPEntity {
  mixin(OOPEntityThis!("WFLElementOutcomeMessage"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "ChannelId": OOPUUIDAttribute.descriptions(["en":""]),
        "ChannelDatabaseId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowElementOutcomeMessageRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_elementoutcomemessages");
  }
}
mixin(OOPEntityCalls!("WFLElementOutcomeMessage"));

version(test_model_workflows) {
  unittest {
    assert(WFLElementOutcomeMessage);

  auto entity = WFLElementOutcomeMessage;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}