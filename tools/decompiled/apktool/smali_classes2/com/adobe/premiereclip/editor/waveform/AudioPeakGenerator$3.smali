.class Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;
.super Ljava/lang/Object;
.source "AudioPeakGenerator.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

.field final synthetic val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

.field final synthetic val$innerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

.field final synthetic val$maxPeakBuffer:Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

.field final synthetic val$minPeakBuffer:Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

.field final synthetic val$outerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$innerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iput-object p3, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$outerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iput-object p4, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$uiHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$minPeakBuffer:Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

    iput-object p6, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$maxPeakBuffer:Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

    iput-object p7, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    const-string/jumbo v0, "FullAudioPeaks"

    const-string/jumbo v1, "file write error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->access$200(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;)V

    .line 362
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 352
    const-string/jumbo v0, "FullAudioPeaks"

    const-string/jumbo v1, "file write success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$innerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$outerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$uiHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$minPeakBuffer:Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

    iget-object v5, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$maxPeakBuffer:Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

    iget-object v6, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-static/range {v0 .. v6}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->access$300(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 355
    return-void
.end method
