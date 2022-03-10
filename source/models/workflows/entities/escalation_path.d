module models.workflows.entities.escalation_path;

@safe:
import models.workflows;

class DWFLEscalationPath : DOOPEntity {
  mixin(OOPEntityThis!("WFLElement"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "channelId": OOPUUIDAttribute.descriptions(["en":""]),
        "channelDatabaseId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowEscalationPathRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_escalationpaths");
  }
}
mixin(OOPEntityCalls!("WFLEscalationPath"));

version(test_model_workflows) {
  unittest {
    assert(WFLEscalationPath);

  auto entity = WFLEscalationPath;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
} 