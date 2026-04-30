.class Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;
.super Ljava/lang/Object;
.source "ProjectPosterResources.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

.field final synthetic val$clipHeight:I

.field final synthetic val$clipWidth:I

.field final synthetic val$pixelBuffer:Ljava/nio/IntBuffer;

.field final synthetic val$waiter:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;IILjava/nio/IntBuffer;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$clipWidth:I

    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$clipHeight:I

    iput-object p4, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$pixelBuffer:Ljava/nio/IntBuffer;

    iput-object p5, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$waiter:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$000(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$clipWidth:I

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$clipHeight:I

    sget-object v4, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onOutputSizeChanged(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 168
    new-instance v7, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$clipWidth:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$clipHeight:I

    const/4 v3, 0x1

    invoke-direct {v7, v1, v2, v5, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    .line 169
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$600(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$clipWidth:I

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$clipHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->onOutputSizeChanged(II)V

    .line 170
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$600(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->updateSurface()V

    .line 171
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$600(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->onDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 173
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$800(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->setGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 175
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$700(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->bindFrameBuffer()V

    .line 176
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$800(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 177
    const/16 v2, 0x500

    const/16 v3, 0x2d0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$pixelBuffer:Ljava/nio/IntBuffer;

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 178
    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;->val$waiter:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 180
    invoke-virtual {v7}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onDestroy()V

    .line 181
    return-void
.end method
