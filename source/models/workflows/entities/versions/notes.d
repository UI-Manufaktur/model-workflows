module models.workflows.entities.versions.notes;

@safe:
import models.workflows;

class DWorkflowVersionNotesEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowVersionNotesEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "notes": StringAttributeClass, //
        "workflowId": UUIDAttributeClass, //
        "relationship_WorkflowVersionRelationshipId": UUIDAttributeClass, //
        "backingTable_WorkflowVersionTableNotesRelationshipId": UUIDAttributeClass, //
      ])
      .registerPath("workflow_versionnotes");
  }
}
mixin(EntityCalls!("WorkflowVersionNotesEntity"));

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