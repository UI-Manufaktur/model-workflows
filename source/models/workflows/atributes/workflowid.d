module models.workflows.atributes.workflowid;

@safe:
import models.workflows;

class DWorkflowIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WorkflowIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("workflowId")
      .registerPath("workflowId");
  }  
}
mixin(AttributeCalls!("WorkflowIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DWorkflowIdAttribute);
    testAttribute(WorkflowIdAttribute);
  }
}