module models.workflows.entities.steps.message;

@safe:
import models.workflows;

class DWFLStepMessage : DOOPEntity {
  mixin(OOPEntityThis!("WFLStepMessage"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "languageId": OOPUUIDAttribute.descriptions(["en":""]),
        "text": OOPStringAttribute.descriptions(["en":""]),
        "stepId": OOPLinkAttribute("wflStep").descriptions(["en":""]),
        "relationship_WorkflowStepRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowMessageTextRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_stepmessages");
  }
}
mixin(OOPEntityCalls!("WFLStepMessage"));

version(test_model_workflows) {
  unittest {
    assert(WFLStepMessage);

  auto entity = WFLStepMessage;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}