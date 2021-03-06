module models.workflows.entities.parameters.system;

@safe:
import models.workflows;

class DWorkflowParametersSystemEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowParametersSystemEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "workflowExecutionUser": StringAttribute, //
        "id": UUIDAttribute, //
        "workflowNotifications": StringAttribute, //
        "addAttachments": StringAttribute, //
        "numberOfBatchTasks": StringAttribute, //
        "isAllowApprovalBySubmitter": StringAttribute, //
        "backingTable_SysWorkflowParametersRelationshipId": UUIDAttribute, //
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