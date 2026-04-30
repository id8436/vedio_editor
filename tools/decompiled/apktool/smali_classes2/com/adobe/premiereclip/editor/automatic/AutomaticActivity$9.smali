.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1096
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2000(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$1900(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1097
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$300(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_MIX:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->setSequenceAudioOptions(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 1098
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$300(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_SNAP_TO_BEAT:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->setSequenceAudioOptions(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 1099
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$300(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->release()V

    .line 1100
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2200(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "freeform"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->updateProjectEditMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->addTransitionTimesForSyncPoints(Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    .line 1102
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/Project;->setEditMode(I)V

    .line 1103
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->updateProject(Lcom/adobe/premiereclip/project/Project;)V

    .line 1104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    const-class v2, Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1105
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$2200(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    const-string/jumbo v1, "newProject"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1107
    const-string/jumbo v1, "converted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1108
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectType(I)V

    .line 1109
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didConvertProjectToFreeform()V

    .line 1110
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->startActivity(Landroid/content/Intent;)V

    .line 1111
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->finish()V

    .line 1112
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    const v1, 0x7f05002b

    const v2, 0x7f05002c

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    .line 1113
    return-void
.end method
