.class Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$2;
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
    .line 179
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$400(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$200(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->access$200(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getDisplayHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onOutputSizeChanged(II)V

    .line 183
    return-void
.end method
