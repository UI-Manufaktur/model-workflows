module models.workflows.entities.parameters.system;

@safe:
import models.workflows;

class DWorkflowParametersSystemEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowParametersSystemEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "workflowExecutionUser": StringAttributeClass, //
        "id": UUIDAttributeClass, //
        "workflowNotifications": StringAttributeClass, //
        "addAttachments": StringAttributeClass, //
        "numberOfBatchTasks": StringAttributeClass, //
        "isAllowApprovalBySubmitter": StringAttributeClass, //
        "backingTable_SysWorkflowParametersRelationshipId": UUIDAttributeClass, //
      ])
      .registerPath("workflow_parameterssystems");
  }
}
mixin(EntityCalls!("WorkflowParametersSystemEntity"));

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