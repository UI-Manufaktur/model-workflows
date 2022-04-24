module models.workflows.entities.parallel_branch;

@safe:
import models.workflows;

class DWorkflowParallelBranchEntity : DOOPEntity {
  mixin(OOPEntityThis!("WorkflowParallelBranchEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "ElementId": OOPUUIDAttribute.descriptions(["en":""]),
        "Relationship_WorkflowElementRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowParallelBranchTableRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_parallelbranches");
  }
}
mixin(OOPEntityCalls!("WorkflowParallelBranchEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowParallelBranchEntity);

  auto entity = WorkflowParallelBranchEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}