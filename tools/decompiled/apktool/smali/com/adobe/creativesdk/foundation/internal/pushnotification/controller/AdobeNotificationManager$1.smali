.class Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$1;
.super Ljava/lang/Object;
.source "AdobeNotificationManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationContactsCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    monitor-enter v1

    .line 155
    :try_start_0
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$002(Ljava/util/List;)Ljava/util/List;

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorContact;

    .line 157
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$100()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorContact;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method
