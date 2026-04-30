.class Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;
.super Ljava/lang/Object;
.source "AudioPeakGenerator.java"


# instance fields
.field private data:Z

.field private final lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;)V
    .locals 1

    .prologue
    .line 874
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->this$0:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->data:Z

    .line 872
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->lock:Ljava/lang/Object;

    .line 875
    return-void
.end method


# virtual methods
.method public getData()Z
    .locals 2

    .prologue
    .line 884
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->data:Z

    monitor-exit v1

    return v0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setData(Z)V
    .locals 2

    .prologue
    .line 878
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 879
    :try_start_0
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->data:Z

    .line 880
    monitor-exit v1

    .line 881
    return-void

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
