module models.workflows.entities.parameters.system;

@safe:
import models.workflows;

class DWFLParametersSystem : DOOPEntity {
  mixin(OOPEntityThis!("WFLParametersSystem"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "workflowExecutionUser": OOPStringAttribute.descriptions(["en":""]),
        "id": OOPUUIDAttribute.descriptions(["en":""]),
        "workflowNotifications": OOPStringAttribute.descriptions(["en":""]),
        "addAttachments": OOPStringAttribute.descriptions(["en":""]),
        "numberOfBatchTasks": OOPStringAttribute.descriptions(["en":""]),
        "isAllowApprovalBySubmitter": OOPStringAttribute.descriptions(["en":""]),
        "backingTable_SysWorkflowParametersRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_parameterssystems");
  }
}
mixin(OOPEntityCalls!("WFLParametersSystem"));

version(test_model_workflows) {
  unittest {
    assert(WFLParametersSystem);

  auto entity = WFLParametersSystem;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}