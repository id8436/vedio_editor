.class Lcom/adobe/premiereclip/editor/EditorActivity$33;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 2691
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$33;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2694
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$33;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$900(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "FREEFORM_TWOFINGER"

    invoke-virtual {v0, v1, v5}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$33;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 2695
    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2696
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$33;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v2, 0x7f0a03cc

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$33;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v3, 0x7f0a03cb

    .line 2697
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FREEFORM_TWOFINGER"

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity$33;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 2699
    invoke-static {v4}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$3000(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/ImageView;

    move-result-object v4

    move-object v7, v6

    move-object v8, v6

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 2701
    const-wide/16 v2, 0x1388

    iput-wide v2, v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->delay:J

    .line 2702
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$33;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithOk(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    .line 2704
    :cond_0
    return-void
.end method
