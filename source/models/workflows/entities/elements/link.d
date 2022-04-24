module models.workflows.entities.elements.link;

@safe:
import models.workflows;

class DWorkflowElementLinkEntity : DOOPEntity {
  mixin(OOPEntityThis!("WorkflowElementLinkEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "level": OOPStringAttribute.descriptions(["en":""]),
        "sequence": OOPStringAttribute.descriptions(["en":""]),
        "sourceType": OOPStringAttribute.descriptions(["en":""]),
        "targetType": OOPStringAttribute.descriptions(["en":""]),
        "sourceElementId": OOPUUIDAttribute.descriptions(["en":""]),
        "targetElementId": OOPUUIDAttribute.descriptions(["en":""]),
        "workflowId": OOPUUIDAttribute.descriptions(["en":""]),
        "outcome": OOPStringAttribute.descriptions(["en":""]),
        "outcomeName": OOPStringAttribute.descriptions(["en":""]),
        "parallelBranchName": OOPStringAttribute.descriptions(["en":""]),
        "parallelBranchElementId": OOPUUIDAttribute.descriptions(["en":""]),
        "outcomeRecId": OOPUUIDAttribute.descriptions(["en":""]),
        "sourceSubworkflowElementLinkId": OOPUUIDAttribute.descriptions(["en":""]),
        "targetSubworkflowElementLinkId": OOPUUIDAttribute.descriptions(["en":""]),
        "relationship_WorkflowVersionRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "Relationship_SourceElementRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "Relationship_TargetElementRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "Relationship_WorkflowParallelBranchRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
        "backingTable_WorkflowElementLinkTableRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_elementlinks");
  }
}
mixin(OOPEntityCalls!("WorkflowElementLinkEntity"));

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