.class Lcom/adobe/premiereclip/editor/EditorActivity$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/getbase/floatingactionbutton/h;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$1;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuCollapsed()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$1;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v1, 0x7f120126

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$1;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$100(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$1;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$100(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 286
    :cond_0
    return-void
.end method

.method public onMenuExpanded()V
    .locals 5

    .prologue
    .line 273
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$1;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 274
    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationInSeconds()D

    move-result-wide v2

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$1;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 275
    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numAudioClips()I

    move-result v1

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity$1;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    .line 276
    invoke-static {v4}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v4

    .line 273
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerForSequenceWithDuration(DII)V

    .line 277
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$1;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    const v1, 0x7f120126

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$1;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$100(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->openView()V

    .line 279
    return-void
.end method
