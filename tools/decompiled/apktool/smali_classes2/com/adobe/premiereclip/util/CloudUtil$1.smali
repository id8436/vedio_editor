.class final Lcom/adobe/premiereclip/util/CloudUtil$1;
.super Ljava/lang/Object;
.source "CloudUtil.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/adobe/premiereclip/util/CloudUtil$Listener;

.field final synthetic val$savedCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/premiereclip/util/CloudUtil$Listener;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/adobe/premiereclip/util/CloudUtil$1;->val$savedCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iput-object p2, p0, Lcom/adobe/premiereclip/util/CloudUtil$1;->val$listener:Lcom/adobe/premiereclip/util/CloudUtil$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/CloudUtil$1;->onCompletion(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCompletion(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    const-string/jumbo v0, "CloudUtil"

    const-string/jumbo v1, "refreshcloud complete!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/adobe/premiereclip/util/CloudUtil$1;->val$savedCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/util/CloudUtil$1;->val$savedCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getMatchingCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/util/CloudUtil$1;->val$listener:Lcom/adobe/premiereclip/util/CloudUtil$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/CloudUtil$Listener;->onCloudInit()V

    .line 61
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/util/CloudUtil$1;->val$listener:Lcom/adobe/premiereclip/util/CloudUtil$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/CloudUtil$Listener;->onNewCloud()V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/util/CloudUtil$1;->val$listener:Lcom/adobe/premiereclip/util/CloudUtil$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/util/CloudUtil$Listener;->onNewCloud()V

    goto :goto_0
.end method
