module models.system.entities.workflows.escalation_path;

@safe:
import models.system;

static this() {
  createEntities[DWFLEscalationPath.namespace] = (Json json) => WFLEscalationPath(json); 
  createEntities["wflEscalationPath"] = (Json json) => WFLEscalationPath(json); 
  createEntities["escalationPath"] = (Json json) => WFLEscalationPath(json); 
}

class DWFLEscalationPath : DOOPEntity {
  this() { super();
    this.attributes([
      "channelId": OOPAttributeUUID.descriptions(["en":""]),
      "channelDatabaseId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowEscalationPathRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflEscalationPath"; }
  override string entityClasses() { return "wflEscalationPaths"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLEscalationPath() { return new DWFLEscalationPath; } 
auto WFLEscalationPath(Json json) { return new DWFLEscalationPath(json); } 

unittest {
  version(uim_entities) {
    assert(WFLEscalationPath);

  auto entity = WFLEscalationPath;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
} 