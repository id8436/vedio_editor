.class Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$10;
.super Ljava/lang/Object;
.source "AdobeCommonCacheInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;

.field final synthetic val$location:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$10;->this$0:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$10;->val$callback:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$10;->val$object:Ljava/lang/Object;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$10;->val$location:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$10;->val$callback:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$10;->val$object:Ljava/lang/Object;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$10;->val$location:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;->onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    .line 1371
    return-void
.end method
