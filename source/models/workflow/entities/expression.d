module models.system.entities.workflows.expression;

@safe:
import models.system;

static this() {
  createEntities[DWFLExpression.namespace] = (Json json) => WFLExpression(json); 
  createEntities["wflExpression"] = (Json json) => WFLExpression(json); 
  createEntities["expression"] = (Json json) => WFLExpression(json); 
}

class DWFLExpression : DOOPEntity {
  this() { super();
    this.attributes([
      "expressionClassName": OOPAttributeString.descriptions(["en":""]),
      "xPathQuery": OOPAttributeString.descriptions(["en":""]),
      "expressionDefinition": OOPAttributeString.descriptions(["en":""]),
      "backingTable_ExpressionTableRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
    ]);
  }

  override string entityClass() { return "wflExpression"; }
  override string entityClasses() { return "wflExpressions"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto WFLExpression() { return new DWFLExpression; } 
auto WFLExpression(Json json) { return new DWFLExpression(json); } 

unittest {
  version(uim_entities) {
    assert(WFLExpression);

  auto entity = WFLExpression;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}