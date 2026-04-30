.class Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;
.super Ljava/lang/Object;
.source "SequenceExporter.java"


# instance fields
.field private mListener:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;

.field private mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->mListenerHandler:Landroid/os/Handler;

    .line 71
    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->mListener:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;

    .line 72
    return-void
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->onEnded(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;)Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->mListener:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;D)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->onProgress(D)V

    return-void
.end method

.method private onEnded(Z)V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$002(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;Z)Z

    .line 90
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->mListenerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$2;-><init>(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onProgress(D)V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->mListener:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$000(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$100(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->mListenerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$1;-><init>(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
