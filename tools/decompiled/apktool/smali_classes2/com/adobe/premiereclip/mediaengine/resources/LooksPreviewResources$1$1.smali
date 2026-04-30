.class Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;
.super Ljava/lang/Object;
.source "LooksPreviewResources.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->val$posterPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$200(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->val$posterPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->setBitmap(Ljava/lang/String;)V

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$200(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->drawImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->access$600(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->val$project:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->applyLook(Lcom/adobe/premiereclip/looks/BaseLook;)Z

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->val$listener:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$Listener;->onInit()V

    .line 120
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;

    const-string/jumbo v1, "0"

    invoke-static {v1}, Lcom/adobe/premiereclip/looks/LocalLooks;->getClipLook(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->applyLook(Lcom/adobe/premiereclip/looks/BaseLook;)Z

    goto :goto_1
.end method
