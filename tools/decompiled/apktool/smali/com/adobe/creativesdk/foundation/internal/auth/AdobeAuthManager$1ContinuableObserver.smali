.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic val$op:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 986
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$op:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 990
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 991
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 992
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$op:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;

    iput-boolean v4, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;->_result:Z

    .line 994
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Authentication"

    const-string/jumbo v2, "reAuthenticate() successful"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    const-string/jumbo v1, "reAuthenticate() successful"

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1004
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1005
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$op:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;

    iput-boolean v4, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;->finished:Z

    .line 1006
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1007
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1009
    return-void

    .line 999
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    .line 1000
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Authentication"

    const-string/jumbo v3, "reAuthenticate() failed"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    if-eqz v1, :cond_1

    .line 1002
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method
