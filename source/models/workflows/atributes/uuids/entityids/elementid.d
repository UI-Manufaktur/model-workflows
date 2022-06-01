module models.workflows.attributes.uuids.entityids.elementid;

@safe:
import models.workflows;

class DElementIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("ElementIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("elementId")
      .registerPath("elementId");
  }  
}
mixin(AttributeCalls!("ElementIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DElementIdAttribute);
    testAttribute(ElementIdAttribute);
  }
}