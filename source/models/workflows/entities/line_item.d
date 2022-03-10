module models.workflows.entities.line_item;

@safe:
import models.workflows;

class DWFLLineItem : DOOPEntity {
  mixin(OOPEntityThis!("WFLLineItem"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "sequence": OOPStringAttribute.descriptions(["en":""]),
        "expressionId": OOPUUIDAttribute.descriptions(["en":""]),
        "elementId": OOPUUIDAttribute.descriptions(["en":""]),
        "workflowNumber": OOPStringAttribute.descriptions(["en":""]),
        "relationship_WorkflowSubworkflowRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_ConditionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowSubWorkflowItemRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_lineitems");
  }
}
mixin(OOPEntityCalls!("WFLLineItem"));

version(test_model_workflows) {
  unittest {
    assert(WFLLineItem);

  auto entity = WFLLineItem;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}