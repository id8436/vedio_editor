.class final Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$2;
.super Ljava/lang/Object;
.source "AdobeCommunityUtils.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$successCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$2;->val$successCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$2;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$2;->val$successCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public onMiss()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$2;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    const-string/jumbo v1, "cache_miss"

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 152
    return-void
.end method
