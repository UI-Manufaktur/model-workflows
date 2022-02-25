module models.workflows.entities.parallel_branch;

@safe:
import models.workflows;

class DWFLParallelBranch : DOOPEntity {
  mixin(OOPEntityThis!("WFLParallelBranch"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "ElementId": OOPUUIDAttribute.descriptions(["en":""]),
        "Relationship_WorkflowElementRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowParallelBranchTableRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_parallelbranches");
  }
}
mixin(OOPEntityCalls!("WFLParallelBranch"));

version(test_model_workflows) {
  unittest {
    assert(WFLParallelBranch);

  auto entity = WFLParallelBranch;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}