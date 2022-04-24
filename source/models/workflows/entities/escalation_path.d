module models.workflows.entities.escalation_path;

@safe:
import models.workflows;

class DWorkflowEscalationPathEntity : DOOPEntity {
  mixin(OOPEntityThis!("WorkflowEscalationPathEntity"));
  
  override void initialize() {
    super.initialize;

    /* Level		Workflow/WorkflowEscalationPathEntity
StepId		Workflow/WorkflowEscalationPathEntity
WorkflowUserValue		Workflow/WorkflowEscalationPathEntity
AssignmentRelationType		Workflow/WorkflowEscalationPathEntity
AssignmentType		Workflow/WorkflowEscalationPathEntity
HierarchyFilterConditionId		Workflow/WorkflowEscalationPathEntity
HierarchyFilterType		Workflow/WorkflowEscalationPathEntity
HierarchyProviderName		Workflow/WorkflowEscalationPathEntity
HierarchyStopConditionId		Workflow/WorkflowEscalationPathEntity
HierarchyTokenName		Workflow/WorkflowEscalationPathEntity
ParticipantProviderName		Workflow/WorkflowEscalationPathEntity
ParticipantTokenName		Workflow/WorkflowEscalationPathEntity
QueueProviderName		Workflow/WorkflowEscalationPathEntity
QueueTokenName		Workflow/WorkflowEscalationPathEntity
UserValue		Workflow/WorkflowEscalationPathEntity
DailyCalendar		Workflow/WorkflowEscalationPathEntity
DailyCalendarProvider		Workflow/WorkflowEscalationPathEntity
DailyIncludeFriday		Workflow/WorkflowEscalationPathEntity
DailyIncludeMonday		Workflow/WorkflowEscalationPathEntity
DailyIncludeSaturday		Workflow/WorkflowEscalationPathEntity
DailyIncludeSunday		Workflow/WorkflowEscalationPathEntity
DailyIncludeThursday		Workflow/WorkflowEscalationPathEntity
DailyIncludeTuesday		Workflow/WorkflowEscalationPathEntity
DailyIncludeWednesday		Workflow/WorkflowEscalationPathEntity
DailyUseNonCalendar		Workflow/WorkflowEscalationPathEntity
DailyValue		Workflow/WorkflowEscalationPathEntity
DateType		Workflow/WorkflowEscalationPathEntity
HourCalendar		Workflow/WorkflowEscalationPathEntity
HourCalendarProvider		Workflow/WorkflowEscalationPathEntity
HourIncludeFriday		Workflow/WorkflowEscalationPathEntity
HourIncludeMonday		Workflow/WorkflowEscalationPathEntity
HourIncludeSaturday		Workflow/WorkflowEscalationPathEntity
HourIncludeSunday		Workflow/WorkflowEscalationPathEntity
HourIncludeThursday		Workflow/WorkflowEscalationPathEntity
HourIncludeTuesday		Workflow/WorkflowEscalationPathEntity
HourIncludeWednesday		Workflow/WorkflowEscalationPathEntity
HoursAvailable		Workflow/WorkflowEscalationPathEntity
HourStartTime		Workflow/WorkflowEscalationPathEntity
HourUseNonCalendar		Workflow/WorkflowEscalationPathEntity
HourValue		Workflow/WorkflowEscalationPathEntity
MonthlyDayOfWeek		Workflow/WorkflowEscalationPathEntity
MonthlyWeekInMonth		Workflow/WorkflowEscalationPathEntity
TimeSpanRelationType		Workflow/WorkflowEscalationPathEntity
WeeklyDayOfWeek		Workflow/WorkflowEscalationPathEntity
WeeklyValue		Workflow/WorkflowEscalationPathEntity
YearlyDayOfWeek		Workflow/WorkflowEscalationPathEntity
YearlyMonthInYear		Workflow/WorkflowEscalationPathEntity
YearlyWeekInMonth		Workflow/WorkflowEscalationPathEntity
Relationship_WorkflowStepRelationshipId		Workflow/WorkflowEscalationPathEntity
Relationship_HierarchyFilterConditionRelationshipId		Workflow/WorkflowEscalationPathEntity
Relationship_HierarchyStopConditionRelationshipId		Workflow/WorkflowEscalationPathEntity
BackingTable_WorkflowEscalationPathTableRelationshipId	 */
    this
      .addAttributes([])
      .registerPath("workflow_escalationpaths");
  }
}
mixin(OOPEntityCalls!("WorkflowEscalationPathEntity"));

version(test_model_workflows) {
  unittest {
    assert(WorkflowEscalationPathEntity);

  auto entity = WorkflowEscalationPathEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
} 