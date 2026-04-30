.class Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;
.super Ljava/lang/Object;
.source "LooksPreviewResources.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$Listener;

.field final synthetic val$posterPath:Ljava/lang/String;

.field final synthetic val$project:Lcom/adobe/premiereclip/project/Project;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$Listener;Ljava/lang/String;Lcom/adobe/premiereclip/project/Project;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->val$listener:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$Listener;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->val$posterPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->val$project:Lcom/adobe/premiereclip/project/Project;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$000(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$000(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v3}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$000(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getHeight()I

    move-result v3

    sget-object v4, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$102(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 77
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$200(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$100(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$400(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    .line 86
    invoke-static {v3}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$400(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v4}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$400(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    .line 85
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$302(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 87
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$400(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$300(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$500(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$100(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$500(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$300(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$500(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$000(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$000(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->onOutputSizeChanged(II)V

    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$500(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->init()V

    .line 96
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->val$listener:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$Listener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$700(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;-><init>(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
