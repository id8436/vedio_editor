.class Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$2;
.super Ljava/lang/Object;
.source "SequenceExporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;Z)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$2;->this$1:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    iput-boolean p2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$2;->this$1:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$300(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)V

    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$2;->this$1:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$400(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 96
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$2;->this$1:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->access$200(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;)Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "Export Task"

    const-string/jumbo v1, "ended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$2;->this$1:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->access$200(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;)Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$2;->val$success:Z

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;->onEnded(Z)V

    .line 100
    :cond_0
    return-void
.end method
