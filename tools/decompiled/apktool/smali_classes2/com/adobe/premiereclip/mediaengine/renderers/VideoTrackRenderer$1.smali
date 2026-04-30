.class Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$1;
.super Ljava/lang/Object;
.source "VideoTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$000(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setMix(F)V

    .line 144
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$000(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$100(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 145
    return-void
.end method
