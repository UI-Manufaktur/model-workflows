module models.workflows.entities.versions.version_;

@safe:
import models.workflows;

class DWorkflowVersionEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowVersionEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        WorkflowIdAttribute, //
      ])
      .addValues([
        "activationConditionId": ConditionIdAttribute, //
        "activationConditionType": StringAttribute, //
        "isActive": StringAttribute, //
        "owner": StringAttribute, //
        "valId": UUIDAttribute, //
        "versionIdBuild": StringAttribute, //
        "versionIdMajor": StringAttribute, //
        "versionIdMinor": StringAttribute, //
        "versionIdRevision": StringAttribute, //
        "workflowTable": StringAttribute, //
        "emailTemplateId": UUIDAttribute, //
        "associationType": StringAttribute, //
        "categoryName": StringAttribute, //
        "dataArea": StringAttribute, //
        "isDefault": StringAttribute, //
        "documentTableName": StringAttribute, //
        "module": StringAttribute, //
        "workflowNumber": StringAttribute, //
        "workflowTypeName": StringAttribute, //
        "type": StringAttribute, //
        "versionId": UUIDAttribute, //
        "relationship_ActiviationConditionRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowVersionTableRelationshipId": UUIDAttribute, //
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