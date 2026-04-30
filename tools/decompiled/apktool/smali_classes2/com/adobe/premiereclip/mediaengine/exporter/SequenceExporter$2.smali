.class Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$2;
.super Ljava/lang/Object;
.source "SequenceExporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

.field final synthetic val$runOnDrawList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$2;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$2;->val$runOnDrawList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 386
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 387
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$2;->val$runOnDrawList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 388
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 390
    :cond_0
    return-void
.end method
