.class Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;
.super Ljava/lang/Object;
.source "AudioPeakGenerator.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

.field final synthetic val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

.field final synthetic val$innerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

.field final synthetic val$outerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    iput-object p3, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$innerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iput-object p4, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$outerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iput-object p5, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$uiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 756
    const-string/jumbo v0, "FullAudioPeaks"

    const-string/jumbo v1, "file read error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    instance-of v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$innerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$outerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$uiHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->access$600(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V

    .line 762
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$innerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$outerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$uiHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->access$700(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public onSuccess([F)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    .line 709
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 710
    div-int/lit8 v3, v0, 0x2

    .line 712
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    instance-of v0, v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    if-eqz v0, :cond_4

    .line 713
    new-instance v4, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

    int-to-long v6, v3

    invoke-direct {v4, v8, v6, v7}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;-><init>(IJ)V

    .line 714
    new-instance v5, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

    int-to-long v6, v3

    invoke-direct {v5, v8, v6, v7}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;-><init>(IJ)V

    move v2, v1

    .line 716
    :goto_0
    if-ge v2, v3, :cond_1

    .line 717
    new-array v6, v8, [F

    move v0, v1

    .line 718
    :goto_1
    if-ge v0, v8, :cond_0

    .line 719
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v0

    .line 720
    aget v7, p1, v7

    aput v7, v6, v0

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 722
    :cond_0
    invoke-virtual {v4}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 725
    :goto_2
    mul-int/lit8 v0, v3, 0x2

    if-ge v2, v0, :cond_3

    .line 726
    new-array v6, v8, [F

    move v0, v1

    .line 727
    :goto_3
    if-ge v0, v8, :cond_2

    .line 728
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v0

    .line 729
    aget v7, p1, v7

    aput v7, v6, v0

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 731
    :cond_2
    invoke-virtual {v5}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 734
    :cond_3
    const-string/jumbo v0, "FullAudioPeaks"

    const-string/jumbo v1, "full peak : file read success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$innerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$outerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$uiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-static/range {v0 .. v6}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->access$300(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 752
    :goto_4
    return-void

    .line 738
    :cond_4
    new-instance v4, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

    int-to-long v6, v3

    invoke-direct {v4, v8, v6, v7}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;-><init>(IJ)V

    move v2, v1

    .line 740
    :goto_5
    if-ge v2, v3, :cond_6

    .line 741
    new-array v5, v8, [F

    move v0, v1

    .line 742
    :goto_6
    if-ge v0, v8, :cond_5

    .line 743
    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v0

    .line 744
    aget v6, p1, v6

    aput v6, v5, v0

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 746
    :cond_5
    invoke-virtual {v4}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 749
    :cond_6
    const-string/jumbo v0, "AudioPeaks"

    const-string/jumbo v1, "file read success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$innerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$outerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$uiHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->access$100(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    goto :goto_4
.end method
