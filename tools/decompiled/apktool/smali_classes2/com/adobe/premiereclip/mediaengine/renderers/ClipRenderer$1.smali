.class Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer$1;
.super Ljava/lang/Object;
.source "ClipRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer$1;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->access$000(Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->onClipSizeChanged(Z)V

    .line 142
    return-void
.end method
