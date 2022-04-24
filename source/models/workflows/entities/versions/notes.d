module models.workflows.entities.versions.notes;

@safe:
import models.workflows;

class DWorkflowVersionNotesEntity : DOOPEntity {
  mixin(OOPEntityThis!("WorkflowVersionNotesEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "notes": OOPStringAttribute.descriptions(["en":""]),
        "workflowId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_WorkflowVersionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowVersionTableNotesRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_versionnotes");
  }
}
mixin(OOPEntityCalls!("WorkflowVersionNotesEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowVersionNotesEntitys);

  auto entity = WorkflowVersionNotesEntitys;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}