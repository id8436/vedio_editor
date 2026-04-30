.class Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$1;
.super Ljava/lang/Object;
.source "GPUMediaTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->drawFrameListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$DrawFrameListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$1;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->drawFrameListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$DrawFrameListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$DrawFrameListener;->onDrawFrame()V

    .line 84
    :cond_0
    return-void
.end method
