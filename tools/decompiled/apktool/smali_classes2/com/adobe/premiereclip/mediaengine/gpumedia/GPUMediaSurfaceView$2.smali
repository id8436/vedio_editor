.class Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$2;
.super Ljava/lang/Object;
.source "GPUMediaSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

.field final synthetic val$filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

.field final synthetic val$frameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field final synthetic val$update:Z


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;ZLcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$2;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    iput-boolean p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$2;->val$update:Z

    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$2;->val$filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$2;->val$frameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$2;->val$update:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$2;->val$filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->updateSurface()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$2;->val$filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$2;->val$frameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 117
    return-void
.end method
