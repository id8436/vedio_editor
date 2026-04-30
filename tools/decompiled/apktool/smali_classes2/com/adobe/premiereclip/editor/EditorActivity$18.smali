.class Lcom/adobe/premiereclip/editor/EditorActivity$18;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$18;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 1752
    if-nez p3, :cond_0

    .line 1754
    :goto_0
    return-void

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$18;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->EXPOSURE:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    int-to-float v2, p2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor;->setClipOptions(Lcom/adobe/premiereclip/editor/Editor$ClipOptions;F)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 1759
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$18;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$18;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v0

    .line 1764
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didChangeClipExposureSlider(FLjava/lang/String;)V

    .line 1766
    return-void
.end method
