.class Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;
.super Ljava/lang/Object;
.source "VideoPlayerRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$000(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->onDisplaySizeChanged()V

    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$200(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getDisplayWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$102(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;I)I

    .line 100
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$200(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getDisplayHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$302(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;I)I

    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$400(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$000(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->setGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$400(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$200(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$200(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getDisplayHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onOutputSizeChanged(II)V

    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$400(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->init()V

    .line 104
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$200(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$400(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->addFilterToChain(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$502(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$602(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;Z)Z

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v1, v3}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$602(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;Z)Z

    .line 108
    throw v0
.end method
