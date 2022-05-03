module models.workflows.entities.parameters.organization;

@safe:
import models.workflows;

class DWorkflowParametersOrganizationEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowParametersOrganizationEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "workflowNotifications": StringAttributeClass, //
        "backingTable_WorkflowParametersRelationshipId": UUIDAttributeClass, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttributeClass, //
      ])
      .registerPath("workflow_parametersorganizations");
  }
}
mixin(EntityCalls!("WorkflowParametersOrganizationEntity")); 

version(test_model_workflows) {
  unittest {
    assert(WorkflowParametersOrganizationEntity);

  auto entity = WorkflowParametersOrganizationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}