.class Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;
.super Ljava/lang/Object;
.source "VideoTrackRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

.field final synthetic val$mix:F

.field final synthetic val$playables:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;FLjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->val$mix:F

    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->val$playables:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 235
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$000(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->val$mix:F

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setMix(F)V

    .line 236
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->val$playables:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v1, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    .line 238
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$200(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 239
    if-lt v1, v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$200(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$000(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    move-result-object v3

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$300(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 247
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->val$playables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 248
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->val$playables:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v1, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    .line 249
    if-ge v1, v2, :cond_0

    .line 252
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$200(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$000(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$300(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$000(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$100(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    goto :goto_1

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$000(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$100(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    goto/16 :goto_0

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$000(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->access$100(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    goto/16 :goto_0
.end method
