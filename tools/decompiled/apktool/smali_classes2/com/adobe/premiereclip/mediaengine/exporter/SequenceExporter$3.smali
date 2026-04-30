.class Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$3;
.super Ljava/lang/Object;
.source "SequenceExporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$3;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 396
    const-string/jumbo v0, "Export Task"

    const-string/jumbo v1, "After render on framebuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 398
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$3;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$800(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 399
    return-void
.end method
