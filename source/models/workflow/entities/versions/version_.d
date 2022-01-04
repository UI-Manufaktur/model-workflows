module models.system.entities.workflows.versions.version_;

@safe:
import models.system;

static this() {
  createEntities[DWFLVersion.namespace] = (Json json) => WFLVersion(json); 
  createEntities["wflVersion"] = (Json json) => WFLVersion(json); 
  createEntities["Version"] = (Json json) => WFLVersion(json); 
}

class DWFLVersion : DOOPEntity {
  this() { super();
    this.attributes([
      "activationConditionId": OOPAttributeUUID.descriptions(["en":""]),
      "activationConditionType": OOPAttributeString.descriptions(["en":""]),
      "workflowId": OOPAttributeUUID.descriptions(["en":""]),
      "isActive": OOPAttributeString.descriptions(["en":""]),
      "owner": OOPAttributeString.descriptions(["en":""]),
      "valId": OOPAttributeUUID.descriptions(["en":""]),
      "versionIdBuild": OOPAttributeString.descriptions(["en":""]),
      "versionIdMajor": OOPAttributeString.descriptions(["en":""]),
      "versionIdMinor": OOPAttributeString.descriptions(["en":""]),
      "versionIdRevision": OOPAttributeString.descriptions(["en":""]),
      "workflowTable": OOPAttributeString.descriptions(["en":""]),
      "emailTemplateId": OOPAttributeUUID.descriptions(["en":""]),
      "associationType": OOPAttributeString.descriptions(["en":""]),
      "categoryName": OOPAttributeString.descriptions(["en":""]),
      "dataArea": OOPAttributeString.descriptions(["en":""]),
      "isDefault": OOPAttributeString.descriptions(["en":""]),
      "documentTableName": OOPAttributeString.descriptions(["en":""]),
      "module": OOPAttributeString.descriptions(["en":""]),
      "workflowNumber": OOPAttributeString.descriptions(["en":""]),
      "workflowTypeName": OOPAttributeString.descriptions(["en":""]),
      "type": OOPAttributeString.descriptions(["en":""]),
      "versionId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_ActiviationConditionRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "backingTable_WorkflowVersionTableRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflVersion"; }
  override string entityClasses() { return "wflVersions"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLVersion() { return new DWFLVersion; } 
auto WFLVersion(Json json) { return new DWFLVersion(json); } 

unittest {
  version(uim_entities) {
    assert(WFLVersion);

  auto entity = WFLVersion;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}