module models.workflows.entities.subworkflow;

@safe:
import models.workflows;

class DWorkflowSubworkflowEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowSubworkflowEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
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