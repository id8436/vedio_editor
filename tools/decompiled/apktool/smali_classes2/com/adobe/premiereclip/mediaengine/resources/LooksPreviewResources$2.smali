.class Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$2;
.super Ljava/lang/Object;
.source "LooksPreviewResources.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$2;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$2;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$500(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->updateSurface()V

    .line 141
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$2;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$500(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->onDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 142
    return-void
.end method
