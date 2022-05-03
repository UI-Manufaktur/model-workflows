module models.workflows.entities.versions.version_;

@safe:
import models.workflows;

class DWorkflowVersionEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowVersionEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "activationConditionId": OOPUUIDAttribute.descriptions(["en":""]),
        "activationConditionType": OOPStringAttribute.descriptions(["en":""]),
        "workflowId": OOPUUIDAttribute.descriptions(["en":""]),
        "isActive": OOPStringAttribute.descriptions(["en":""]),
        "owner": OOPStringAttribute.descriptions(["en":""]),
        "valId": OOPUUIDAttribute.descriptions(["en":""]),
        "versionIdBuild": OOPStringAttribute.descriptions(["en":""]),
        "versionIdMajor": OOPStringAttribute.descriptions(["en":""]),
        "versionIdMinor": OOPStringAttribute.descriptions(["en":""]),
        "versionIdRevision": OOPStringAttribute.descriptions(["en":""]),
        "workflowTable": OOPStringAttribute.descriptions(["en":""]),
        "emailTemplateId": OOPUUIDAttribute.descriptions(["en":""]),
        "associationType": OOPStringAttribute.descriptions(["en":""]),
        "categoryName": OOPStringAttribute.descriptions(["en":""]),
        "dataArea": OOPStringAttribute.descriptions(["en":""]),
        "isDefault": OOPStringAttribute.descriptions(["en":""]),
        "documentTableName": OOPStringAttribute.descriptions(["en":""]),
        "module": OOPStringAttribute.descriptions(["en":""]),
        "workflowNumber": OOPStringAttribute.descriptions(["en":""]),
        "workflowTypeName": OOPStringAttribute.descriptions(["en":""]),
        "type": OOPStringAttribute.descriptions(["en":""]),
        "versionId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_ActiviationConditionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowVersionTableRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_versions");
  }
}
mixin(EntityCalls!("WorkflowVersionEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowVersionEntity);

  auto entity = WorkflowVersionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}