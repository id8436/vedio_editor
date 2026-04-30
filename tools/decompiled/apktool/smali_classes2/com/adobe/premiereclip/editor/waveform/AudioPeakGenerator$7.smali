.class Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$7;
.super Ljava/lang/Object;
.source "AudioPeakGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

.field final synthetic val$bitmaps:Ljava/util/ArrayList;

.field final synthetic val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$7;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$7;->val$bitmaps:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$7;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 785
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$7;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->access$400(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 786
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$7;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->access$500(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;)Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$7;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->access$500(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;)Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$7;->val$bitmaps:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$7;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-interface {v0, v2, v3}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;->onWaveformDraw(Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 789
    :cond_0
    monitor-exit v1

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
