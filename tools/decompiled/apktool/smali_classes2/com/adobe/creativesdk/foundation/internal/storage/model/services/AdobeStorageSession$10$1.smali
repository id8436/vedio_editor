.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10$1;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10$1;->val$error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$10$1;->val$error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;->onError(Ljava/lang/Object;)V

    .line 903
    :cond_0
    return-void
.end method
