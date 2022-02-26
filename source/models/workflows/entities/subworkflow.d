module models.workflows.entities.subworkflow;

@safe:
import models.workflows;

class DWFLSubworkflow : DOOPEntity {
  mixin(OOPEntityThis!("WFLSubworkflow"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "DocumentKeyField": OOPStringAttribute.descriptions(["en":""]),
        "DocumentKeyTable": OOPStringAttribute.descriptions(["en":""]),
        "ElementId": OOPUUIDAttribute.descriptions(["en":""]),
        "ElementName": OOPStringAttribute.descriptions(["en":""]),
        "ElementType": OOPStringAttribute.descriptions(["en":""]),
        "LineItemType": OOPStringAttribute.descriptions(["en":""]),
        "ParallelBranchElementId": OOPUUIDAttribute.descriptions(["en":""]),
        "ParallelBranchName": OOPStringAttribute.descriptions(["en":""]),
        "WaitForComplete": OOPStringAttribute.descriptions(["en":""]),
        "WorkflowNumber": OOPStringAttribute.descriptions(["en":""]),
        "WorkflowId": OOPUUIDAttribute.descriptions(["en":""]),
        "Relationship_WorkflowVersionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "Relationship_WorkflowParallelBranchRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowSubWorkflowRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_subworkflows");
  }
}
mixin(OOPEntityCalls!("WFLSubworkflow"));


version(test_model_workflows) {
  unittest {
    assert(WFLSubworkflow);

  auto entity = WFLSubworkflow;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}