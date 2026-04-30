.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

.field final synthetic val$lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic val$op:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 948
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$op:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 953
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 954
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 955
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$op:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;

    iput-boolean v4, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;->_result:Z

    .line 958
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Authentication"

    const-string/jumbo v2, "reAuthenticate() successful"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onSuccess(Ljava/lang/Object;)V

    .line 978
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 979
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$op:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;

    iput-boolean v4, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;->finished:Z

    .line 980
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 981
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 982
    return-void

    .line 964
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    .line 965
    if-eqz v0, :cond_3

    .line 967
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_INTERACTION_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-ne v1, v2, :cond_3

    .line 969
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Authentication"

    const-string/jumbo v3, "emergency logout()"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 972
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$700(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)V

    .line 975
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    if-eqz v1, :cond_1

    .line 976
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method
