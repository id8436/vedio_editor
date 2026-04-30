.class Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$1;
.super Ljava/lang/Object;
.source "SequenceExporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;D)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$1;->this$1:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    iput-wide p2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$1;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 81
    const-string/jumbo v0, "Export Task"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$1;->val$progress:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$1;->this$1:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->access$200(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;)Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;

    move-result-object v0

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper$1;->val$progress:D

    invoke-interface {v0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;->onProgress(D)V

    .line 83
    return-void
.end method
