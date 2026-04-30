.class Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$1;
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
    .line 344
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 348
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 349
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$500(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->onDisplaySizeChanged()V

    .line 350
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$600(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$500(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->setGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 351
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$600(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$700(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    move-result-object v1

    iget v1, v1, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mVideoWidth:I

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$700(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    move-result-object v2

    iget v2, v2, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mVideoHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onOutputSizeChanged(II)V

    .line 352
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$1;->this$0:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->access$600(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->init()V

    .line 353
    return-void
.end method
