module models.workflows.entities.elements.link;

@safe:
import models.workflows;

class DWorkflowElementLinkEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowElementLinkEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "level": StringAttribute, // 
        "sequence": StringAttribute, // 
        "sourceType": StringAttribute, // 
        "targetType": StringAttribute, // 
        "sourceElementId": UUIDAttribute, // 
        "targetElementId": UUIDAttribute, // 
        "workflowId": UUIDAttribute, // 
        "outcome": StringAttribute, // 
        "outcomeName": StringAttribute, // 
        "parallelBranchName": StringAttribute, // 
        "parallelBranchElementId": UUIDAttribute, // 
        "outcomeRecId": UUIDAttribute, // 
        "sourceSubworkflowElementLinkId": UUIDAttribute, // 
        "targetSubworkflowElementLinkId": UUIDAttribute, // 
        "relationship_WorkflowVersionRelationshipId": UUIDAttribute, // 
        "Relationship_SourceElementRelationshipId": UUIDAttribute, // 
        "Relationship_TargetElementRelationshipId": UUIDAttribute, // 
        "Relationship_WorkflowParallelBranchRelationshipId": UUIDAttribute, // 
        "backingTable_WorkflowElementLinkTableRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("workflow_elementlinks");
  }
}
mixin(EntityCalls!("WorkflowElementLinkEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowElementLinkEntity);

  auto entity = WorkflowElementLinkEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}