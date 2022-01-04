module models.system.entities.workflows.parameters.system;

@safe:
import models.system;

static this() {
  createEntities[DWFLParametersSystem.namespace] = (Json json) => WFLParametersSystem(json); 
  createEntities["wflParametersSystem"] = (Json json) => WFLParametersSystem(json); 
  createEntities["ParametersSystem"] = (Json json) => WFLParametersSystem(json); 
}

class DWFLParametersSystem : DOOPEntity {
  this() { super();
    this.attributes([
      "workflowExecutionUser": OOPAttributeString.descriptions(["en":""]),
      "id": OOPAttributeUUID.descriptions(["en":""]),
      "workflowNotifications": OOPAttributeString.descriptions(["en":""]),
      "addAttachments": OOPAttributeString.descriptions(["en":""]),
      "numberOfBatchTasks": OOPAttributeString.descriptions(["en":""]),
      "isAllowApprovalBySubmitter": OOPAttributeString.descriptions(["en":""]),
      "backingTable_SysWorkflowParametersRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityPath() { return "workflow/parameters-system"; }
  override string entityClass() { return "wflParametersSystem"; }
  override string entityClasses() { return "wflParametersSystems"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLParametersSystem() { return new DWFLParametersSystem; } 
auto WFLParametersSystem(Json json) { return new DWFLParametersSystem(json); } 

unittest {
  version(uim_entities) {
    assert(WFLParametersSystem);

  auto entity = WFLParametersSystem;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}