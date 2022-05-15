module models.workflows.atributes.channelid;

@safe:
import models.workflows;

class DChannelIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("ChannelIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("channelId")
      .registerPath("channelId");
  }  
}
mixin(AttributeCalls!("ChannelIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DChannelIdAttribute);
    testAttribute(ChannelIdAttribute);
  }
}