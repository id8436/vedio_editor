.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Lcom/getbase/floatingactionbutton/h;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuCollapsed()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    const v1, 0x7f120126

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$600(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$600(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 290
    :cond_0
    return-void
.end method

.method public onMenuExpanded()V
    .locals 5

    .prologue
    .line 277
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    .line 278
    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationInSeconds()D

    move-result-wide v2

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    .line 279
    invoke-static {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numAudioClips()I

    move-result v1

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    .line 280
    invoke-static {v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v4

    .line 277
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerForSequenceWithDuration(DII)V

    .line 281
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    const v1, 0x7f120126

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$600(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/BottomSheetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->openView()V

    .line 283
    return-void
.end method
