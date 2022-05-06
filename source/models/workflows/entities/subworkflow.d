module models.workflows.entities.subworkflow;

@safe:
import models.workflows;

class DWorkflowSubworkflowEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowSubworkflowEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "DocumentKeyField": StringAttribute, //
        "DocumentKeyTable": StringAttribute, //
        "ElementId": UUIDAttribute, //
        "ElementName": StringAttribute, //
        "ElementType": StringAttribute, //
        "LineItemType": StringAttribute, //
        "ParallelBranchElementId": UUIDAttribute, //
        "ParallelBranchName": StringAttribute, //
        "WaitForComplete": StringAttribute, //
        "WorkflowNumber": StringAttribute, //
        "WorkflowId": UUIDAttribute, //
        "Relationship_WorkflowVersionRelationshipId": UUIDAttribute, //
        "Relationship_WorkflowParallelBranchRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowSubWorkflowRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_subworkflows");
  }
}
mixin(EntityCalls!("WorkflowSubworkflowEntity"));


version(test_model_workflows) {
  unittest {
    assert(WorkflowSubworkflowEntity);

  auto entity = WorkflowSubworkflowEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}