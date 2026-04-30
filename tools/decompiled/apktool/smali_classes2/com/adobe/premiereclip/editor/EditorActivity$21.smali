.class Lcom/adobe/premiereclip/editor/EditorActivity$21;
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
    .line 1806
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$21;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    .line 1809
    if-nez p3, :cond_0

    .line 1813
    :goto_0
    return-void

    .line 1810
    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    int-to-float v1, p2

    mul-float/2addr v0, v1

    const/high16 v1, 0x43c80000    # 400.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    .line 1811
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1812
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$21;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$2100(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 1818
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity$21;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity$21;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v0

    .line 1823
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x43c80000    # 400.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3e800000    # 0.25f

    add-float/2addr v1, v2

    .line 1824
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity$21;->this$0:Lcom/adobe/premiereclip/editor/EditorActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;

    move-result-object v2

    sget-object v3, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->SPEED:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    invoke-virtual {v2, v3, v1}, Lcom/adobe/premiereclip/editor/Editor;->setClipOptions(Lcom/adobe/premiereclip/editor/Editor$ClipOptions;F)V

    .line 1825
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v0, v4, v5}, Lcom/adobe/premiereclip/metrics/Metrics;->didChangeClipSpeedSlider(FLjava/lang/String;D)V

    .line 1826
    return-void
.end method
