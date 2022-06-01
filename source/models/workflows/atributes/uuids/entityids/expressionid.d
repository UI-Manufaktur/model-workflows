module models.workflows.attributes.uuids.entityids.expressionid;

@safe:
import models.workflows;

class DExpressionIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("ExpressionIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("expressionId")
      .registerPath("expressionId");
  }  
}
mixin(AttributeCalls!("ExpressionIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DExpressionIdAttribute);
    testAttribute(ExpressionIdAttribute);
  }
}