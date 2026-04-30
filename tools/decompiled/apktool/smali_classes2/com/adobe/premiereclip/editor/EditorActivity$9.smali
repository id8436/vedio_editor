.class Lcom/adobe/premiereclip/editor/EditorActivity$9;
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
    .line 690
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$9;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 693
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$9;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$900(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "FREEFORM_EDIT_PROJECT"

    invoke-virtual {v0, v1, v5}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$9;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v1, 0x7f12010b

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 695
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$9;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v2, 0x7f0a03c1

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$9;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v3, 0x7f0a03c0

    .line 696
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FREEFORM_EDIT_PROJECT"

    move-object v7, v6

    move-object v8, v6

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 699
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$9;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$1000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithOk(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    .line 701
    :cond_0
    return-void
.end method
