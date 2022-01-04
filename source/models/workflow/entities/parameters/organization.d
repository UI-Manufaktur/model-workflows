module models.system.entities.workflows.parameters.organization;

@safe:
import models.system;

static this() {
  createEntities[DWFLParametersOrganization.namespace] = (Json json) => WFLParametersOrganization(json); 
  createEntities["wflParametersOrganization"] = (Json json) => WFLParametersOrganization(json); 
  createEntities["ParametersOrganization"] = (Json json) => WFLParametersOrganization(json); 
}

class DWFLParametersOrganization : DOOPEntity {
  this() { super();
    this.attributes([
      "workflowNotifications": OOPAttributeString.descriptions(["en":""]),
      "backingTable_WorkflowParametersRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityPath() { return "workflow/parameters-organization"; }
  override string entityClass() { return "wflParametersOrganization"; }
  override string entityClasses() { return "wflParametersOrganizations"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLParametersOrganization() { return new DWFLParametersOrganization; } 
auto WFLParametersOrganization(Json json) { return new DWFLParametersOrganization(json); } 

unittest {
  version(uim_entities) {
    assert(WFLParametersOrganization);

  auto entity = WFLParametersOrganization;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}