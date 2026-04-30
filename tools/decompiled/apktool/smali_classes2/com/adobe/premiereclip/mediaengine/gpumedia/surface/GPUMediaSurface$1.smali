.class Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$1;
.super Ljava/lang/Object;
.source "GPUMediaSurface.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$DrawFrameListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->access$002(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;Z)Z

    .line 96
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->access$100(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->access$100(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$Listener;->onNewFrame()V

    .line 100
    :cond_0
    return-void

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
