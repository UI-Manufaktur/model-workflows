module models.workflows.entities.parameters.organization;

@safe:
import models.workflows;

class DWFLParametersOrganization : DOOPEntity {
  mixin(OOPEntityThis!("WFLParametersOrganization"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "workflowNotifications": OOPStringAttribute.descriptions(["en":""]),
        "backingTable_WorkflowParametersRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_PrimaryCompanyContextRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_parametersorganizations");
  }
}
mixin(OOPEntityCalls!("WFLParametersOrganization")); 

version(test_model_workflows) {
  unittest {
    assert(WFLParametersOrganization);

  auto entity = WFLParametersOrganization;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}