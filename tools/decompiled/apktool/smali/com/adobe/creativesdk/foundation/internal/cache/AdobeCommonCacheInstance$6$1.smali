.class Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$6$1;
.super Ljava/lang/Object;
.source "AdobeCommonCacheInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$6;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$6;)V
    .locals 0

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$6$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$6$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$6;->val$callback:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;->onMiss()V

    .line 1215
    return-void
.end method
