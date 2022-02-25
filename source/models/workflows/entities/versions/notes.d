module models.workflows.entities.versions.notes;

@safe:
import models.workflows;

class DWFLVersionNote : DOOPEntity {
  mixin(OOPEntityThis!("WFLVersionNote"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "notes": OOPStringAttribute.descriptions(["en":""]),
        "workflowId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_WorkflowVersionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowVersionTableNotesRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_versionnotes");
  }
}
mixin(OOPEntityCalls!("WFLVersionNote"));

version(test_model_workflows) {
  unittest {
    assert(WFLVersionNotes);

  auto entity = WFLVersionNotes;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}