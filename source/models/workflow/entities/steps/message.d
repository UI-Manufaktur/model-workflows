module models.system.entities.workflows.steps.message;

@safe:
import models.system;

static this() {
  createEntities[DWFLStepMessage.namespace] = (Json json) => WFLStepMessage(json); 
  createEntities["wflStepMessage"] = (Json json) => WFLStepMessage(json); 
  createEntities["stepMessage"] = (Json json) => WFLStepMessage(json); 
}

class DWFLStepMessage : DOOPEntity {
  this() { super();
    this.attributes([
      "languageId": OOPAttributeUUID.descriptions(["en":""]),
      "text": OOPAttributeString.descriptions(["en":""]),
      "stepId": OOPAttributeLink("wflStep").descriptions(["en":""]),
      "relationship_WorkflowStepRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowMessageTextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityPath() { return "workflow/step-message"; }
  override string entityClass() { return "wflStepMessage"; }
  override string entityClasses() { return "wflStepMessages"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLStepMessage() { return new DWFLStepMessage; } 
auto WFLStepMessage(Json json) { return new DWFLStepMessage(json); } 

unittest {
  version(uim_entities) {
    assert(WFLStepMessage);

  auto entity = WFLStepMessage;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}