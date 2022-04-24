module models.workflows.entities.parameters.system;

@safe:
import models.workflows;

class DWorkflowParametersSystemEntity : DOOPEntity {
  mixin(OOPEntityThis!("WorkflowParametersSystemEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
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
mixin(OOPEntityCalls!("WorkflowParametersSystemEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowParametersSystemEntity);

  auto entity = WorkflowParametersSystemEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}