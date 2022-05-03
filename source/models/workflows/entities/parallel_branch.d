module models.workflows.entities.parallel_branch;

@safe:
import models.workflows;

class DWorkflowParallelBranchEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowParallelBranchEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ElementId": UUIDAttributeClass, //
        "Relationship_WorkflowElementRelationshipId": UUIDAttributeClass, //
        "backingTable_WorkflowParallelBranchTableRelationshipId": UUIDAttributeClass, //
      ])
      .registerPath("workflow_parallelbranches");
  }
}
mixin(EntityCalls!("WorkflowParallelBranchEntity"));

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