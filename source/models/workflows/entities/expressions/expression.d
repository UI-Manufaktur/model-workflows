module models.workflows.entities.expressions.expression;

@safe:
import models.workflows;

class DWFLExpression : DOOPEntity {
  mixin(OOPEntityThis!("WFLExpression"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "expressionClassName": OOPStringAttribute.descriptions(["en":""]),
        "xPathQuery": OOPStringAttribute.descriptions(["en":""]),
        "expressionDefinition": OOPStringAttribute.descriptions(["en":""]),
        "backingTable_ExpressionTableRelationshipId": OOPUUIDAttribute.descriptions(["en":""]),
      ])
      .registerPath("workflow_expressions");
  }
}
mixin(OOPEntityCalls!("WFLExpression"));

version(test_model_workflows) {
  unittest {
    assert(WFLExpression);

  auto entity = WFLExpression;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}