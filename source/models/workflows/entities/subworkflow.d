module models.workflows.entities.subworkflow;

@safe:
import models.workflows;

class DWorkflowSubworkflowEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowSubworkflowEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "DocumentKeyField": StringAttributeClass, //
        "DocumentKeyTable": StringAttributeClass, //
        "ElementId": UUIDAttributeClass, //
        "ElementName": StringAttributeClass, //
        "ElementType": StringAttributeClass, //
        "LineItemType": StringAttributeClass, //
        "ParallelBranchElementId": UUIDAttributeClass, //
        "ParallelBranchName": StringAttributeClass, //
        "WaitForComplete": StringAttributeClass, //
        "WorkflowNumber": StringAttributeClass, //
        "WorkflowId": UUIDAttributeClass, //
        "Relationship_WorkflowVersionRelationshipId": UUIDAttributeClass, //
        "Relationship_WorkflowParallelBranchRelationshipId": UUIDAttributeClass, //
        "backingTable_WorkflowSubWorkflowRelationshipId": UUIDAttributeClass, //
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