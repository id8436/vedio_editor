.class Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$1;
.super Ljava/lang/Object;
.source "GPUMediaSurfaceView.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->access$100(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;->onDraw()V

    .line 61
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->access$002(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;

    .line 52
    return-void
.end method
