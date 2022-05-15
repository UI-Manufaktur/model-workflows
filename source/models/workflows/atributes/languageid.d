module models.workflows.atributes.languageid;

@safe:
import models.workflows;

class DLanguageIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("LanguageIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("languageId")
      .registerPath("languageId");
  }  
}
mixin(AttributeCalls!("LanguageIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DLanguageIdAttribute);
    testAttribute(LanguageIdAttribute);
  }
}