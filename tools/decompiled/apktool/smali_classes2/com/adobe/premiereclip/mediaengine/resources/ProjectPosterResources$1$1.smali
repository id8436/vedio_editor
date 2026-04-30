.class Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1$1;
.super Ljava/lang/Object;
.source "ProjectPosterResources.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1$1;->this$1:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;->val$listener:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$Listener;->onInit()V

    .line 112
    return-void
.end method
