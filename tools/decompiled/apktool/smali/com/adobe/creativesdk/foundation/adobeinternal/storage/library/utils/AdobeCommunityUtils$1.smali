.class final Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$1;
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
.field final synthetic val$guid:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$1;->val$value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$1;->val$guid:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onMiss()V
    .locals 6

    .prologue
    .line 125
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->access$100()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$1;->val$value:Ljava/lang/Object;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$1;->val$guid:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils$1;->val$key:Ljava/lang/String;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/utils/AdobeCommunityUtils;->access$000()Ljava/util/EnumSet;

    move-result-object v4

    const-string/jumbo v5, "ADOBE_COMMUNITY_CACHE"

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z

    .line 126
    return-void
.end method
