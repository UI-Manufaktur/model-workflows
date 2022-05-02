module models.workflows.entities.elements.link;

@safe:
import models.workflows;

class DWorkflowElementLinkEntity : DOOPEntity {
  mixin(EntityThis!("WorkflowElementLinkEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "level": StringAttributeClass, // "]),
        "sequence": StringAttributeClass, // "]),
        "sourceType": StringAttributeClass, // "]),
        "targetType": StringAttributeClass, // "]),
        "sourceElementId": UUIDAttributeClass, // "]),
        "targetElementId": UUIDAttributeClass, // "]),
        "workflowId": UUIDAttributeClass, // "]),
        "outcome": StringAttributeClass, // "]),
        "outcomeName": StringAttributeClass, // "]),
        "parallelBranchName": StringAttributeClass, // "]),
        "parallelBranchElementId": UUIDAttributeClass, // "]),
        "outcomeRecId": UUIDAttributeClass, // "]),
        "sourceSubworkflowElementLinkId": UUIDAttributeClass, // "]),
        "targetSubworkflowElementLinkId": UUIDAttributeClass, // "]),
        "relationship_WorkflowVersionRelationshipId": UUIDAttributeClass, // "]),
        "Relationship_SourceElementRelationshipId": UUIDAttributeClass, // "]),
        "Relationship_TargetElementRelationshipId": UUIDAttributeClass, // "]),
        "Relationship_WorkflowParallelBranchRelationshipId": UUIDAttributeClass, // "]),
        "backingTable_WorkflowElementLinkTableRelationshipId": UUIDAttributeClass, // "]),
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