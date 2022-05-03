module models.workflows.entities.versions.version_;

@safe:
import models.workflows;

class DWorkflowVersionEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowVersionEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "activationConditionId": UUIDAttributeClass, //
        "activationConditionType": StringAttributeClass, //
        "workflowId": UUIDAttributeClass, //
        "isActive": StringAttributeClass, //
        "owner": StringAttributeClass, //
        "valId": UUIDAttributeClass, //
        "versionIdBuild": StringAttributeClass, //
        "versionIdMajor": StringAttributeClass, //
        "versionIdMinor": StringAttributeClass, //
        "versionIdRevision": StringAttributeClass, //
        "workflowTable": StringAttributeClass, //
        "emailTemplateId": UUIDAttributeClass, //
        "associationType": StringAttributeClass, //
        "categoryName": StringAttributeClass, //
        "dataArea": StringAttributeClass, //
        "isDefault": StringAttributeClass, //
        "documentTableName": StringAttributeClass, //
        "module": StringAttributeClass, //
        "workflowNumber": StringAttributeClass, //
        "workflowTypeName": StringAttributeClass, //
        "type": StringAttributeClass, //
        "versionId": UUIDAttributeClass, //
        "relationship_ActiviationConditionRelationshipId": UUIDAttributeClass, //
        "backingTable_WorkflowVersionTableRelationshipId": UUIDAttributeClass, //
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