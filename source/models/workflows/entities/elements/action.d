module models.workflows.entities.elements.action;

@safe:
import models.workflows;

class DWFLElementAction : DOOPEntity {
  mixin(OOPEntityThis!("WFLElementAction"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "enabled": OOPStringAttribute.descriptions(["en":""]),
        "isOutcome": OOPStringAttribute.descriptions(["en":""]),
        "elementId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_WorkflowElementRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowActionTableRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_elementactions");
  }
}
mixin(OOPEntityCalls!("WFLElementAction"));

version(test_model_workflows) {
  unittest {
    assert(WFLElementAction);

  auto entity = WFLElementAction;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}