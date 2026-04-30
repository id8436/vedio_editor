.class Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$3;
.super Ljava/lang/Object;
.source "VideoPlayerRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

.field final synthetic val$runOnDrawList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$3;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$3;->val$runOnDrawList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$3;->val$runOnDrawList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 196
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method
