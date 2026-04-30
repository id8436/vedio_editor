.class Lcom/adobe/premiereclip/editor/Editor$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/Editor;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/Editor;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Editor$2;->this$0:Lcom/adobe/premiereclip/editor/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor$2;->this$0:Lcom/adobe/premiereclip/editor/Editor;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Editor;->access$100(Lcom/adobe/premiereclip/editor/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor$2;->this$0:Lcom/adobe/premiereclip/editor/Editor;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Editor;->access$200(Lcom/adobe/premiereclip/editor/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Editor$2;->this$0:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->updateProjectPoster()V

    .line 325
    :cond_0
    return-void
.end method
