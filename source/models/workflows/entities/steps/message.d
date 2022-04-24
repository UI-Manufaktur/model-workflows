module models.workflows.entities.steps.message;

@safe:
import models.workflows;

class DWorkflowStepMessageEntity : DOOPEntity {
  mixin(OOPEntityThis!("WorkflowStepMessageEntity"));
  
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
mixin(OOPEntityCalls!("WorkflowStepMessageEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowStepMessageEntity);

  auto entity = WorkflowStepMessageEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}