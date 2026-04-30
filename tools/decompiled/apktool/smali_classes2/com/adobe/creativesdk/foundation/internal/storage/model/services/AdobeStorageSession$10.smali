.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 894
    check-cast p1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    return-void
.end method
