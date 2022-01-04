module models.system.entities.workflows.versions.notes;

@safe:
import models.system;

static this() {
  createEntities[DWFLVersionNotes.namespace] = (Json json) => WFLVersionNotes(json); 
  createEntities["wflVersionNotes"] = (Json json) => WFLVersionNotes(json); 
  createEntities["VersionNotes"] = (Json json) => WFLVersionNotes(json); 
}

class DWFLVersionNotes : DOOPEntity {
  this() { super();
    this.attributes([
      "notes": OOPAttributeString.descriptions(["en":""]),
      "workflowId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_WorkflowVersionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowVersionTableNotesRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflVersionNotes"; }
  override string entityClasses() { return "wflVersionNotess"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLVersionNotes() { return new DWFLVersionNotes; } 
auto WFLVersionNotes(Json json) { return new DWFLVersionNotes(json); } 

unittest {
  version(uim_entities) {
    assert(WFLVersionNotes);

  auto entity = WFLVersionNotes;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}