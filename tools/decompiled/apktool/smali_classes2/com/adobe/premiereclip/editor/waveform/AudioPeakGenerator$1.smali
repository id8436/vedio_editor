.class Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;
.super Ljava/lang/Object;
.source "AudioPeakGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 85
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    iput-object p2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    iput-object p3, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;->val$innerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iput-object p4, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;->val$outerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iput-object p5, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;->val$uiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;->val$innerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;->val$outerDisplayParam:Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;->val$uiHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->access$000(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V

    .line 90
    return-void
.end method
