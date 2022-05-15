module models.workflows.atributes.conditionid;

@safe:
import models.workflows;

class DConditionIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("ConditionIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("conditionId")
      .registerPath("conditionId");
  }  
}
mixin(AttributeCalls!("ConditionIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DConditionIdAttribute);
    testAttribute(ConditionIdAttribute);
  }
}