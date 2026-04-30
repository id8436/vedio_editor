.class Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings$1;
.super Ljava/lang/Object;
.source "AutomaticActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;)V
    .locals 0

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 1008
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 1013
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 1017
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1018
    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float v1, v0, v1

    .line 1019
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didChangeAutoPaceSlider(F)V

    .line 1020
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$300(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    move-result-object v0

    sget-object v2, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_SYNC_PACE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    invoke-virtual {v0, v2, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->setSequenceAudioOptions(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 1021
    const-string/jumbo v0, "AutomaticActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "paceBar.onStopTrackingTouch pace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$200(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    .line 1023
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings$1;->this$0:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->setSequenceTime(Ljava/lang/Long;)V

    .line 1024
    return-void
.end method
