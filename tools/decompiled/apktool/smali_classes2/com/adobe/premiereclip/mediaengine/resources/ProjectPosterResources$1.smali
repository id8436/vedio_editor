.class Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;
.super Ljava/lang/Object;
.source "ProjectPosterResources.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

.field final synthetic val$listener:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$Listener;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$Listener;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->val$listener:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x500

    const/16 v6, 0x2d0

    const/4 v5, 0x0

    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-direct {v1, v7, v6, v2, v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$002(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$100(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$000(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 87
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$300(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    .line 88
    invoke-static {v3}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$300(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v4}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$300(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    .line 87
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$202(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$300(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$200(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$500(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    .line 92
    invoke-static {v3}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$500(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v4}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$500(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    .line 91
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$402(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$500(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$400(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$600(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$000(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 96
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$600(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$400(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$600(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$200(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$600(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->onOutputSizeChanged(II)V

    .line 100
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$600(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->init()V

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v6, v2, v8}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$702(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 104
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$800(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onOutputSizeChanged(II)V

    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$800(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->init()V

    .line 107
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->val$listener:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$Listener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->access$900(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1$1;-><init>(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_0
    return-void
.end method
