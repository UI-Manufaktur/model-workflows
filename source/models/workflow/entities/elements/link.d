module models.system.entities.workflows.elements.link;

@safe:
import models.system;

static this() {
  createEntities[DWFLElementLink.namespace] = (Json json) => WFLElementLink(json); 
  createEntities["wflElementLink"] = (Json json) => WFLElementLink(json); 
  createEntities["elementLink"] = (Json json) => WFLElementLink(json); 
}

class DWFLElementLink : DOOPEntity {
  this() { super();
    this.attributes([
      "level": OOPAttributeString.descriptions(["en":""]),
      "sequence": OOPAttributeString.descriptions(["en":""]),
      "sourceType": OOPAttributeString.descriptions(["en":""]),
      "targetType": OOPAttributeString.descriptions(["en":""]),
      "sourceElementId": OOPAttributeUUID.descriptions(["en":""]),
      "targetElementId": OOPAttributeUUID.descriptions(["en":""]),
      "workflowId": OOPAttributeUUID.descriptions(["en":""]),
      "outcome": OOPAttributeString.descriptions(["en":""]),
      "outcomeName": OOPAttributeString.descriptions(["en":""]),
      "parallelBranchName": OOPAttributeString.descriptions(["en":""]),
      "parallelBranchElementId": OOPAttributeUUID.descriptions(["en":""]),
      "outcomeRecId": OOPAttributeUUID.descriptions(["en":""]),
      "sourceSubworkflowElementLinkId": OOPAttributeUUID.descriptions(["en":""]),
      "targetSubworkflowElementLinkId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_WorkflowVersionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_SourceElementRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_TargetElementRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "Relationship_WorkflowParallelBranchRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowElementLinkTableRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityPath() { return "workflow/element-link"; }
  override string entityClass() { return "wflElementLink"; }
  override string entityClasses() { return "wflElementLinks"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLElementLink() { return new DWFLElementLink; } 
auto WFLElementLink(Json json) { return new DWFLElementLink(json); } 

unittest {
  version(uim_entities) {
    assert(WFLElementLink);

  auto entity = WFLElementLink;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}