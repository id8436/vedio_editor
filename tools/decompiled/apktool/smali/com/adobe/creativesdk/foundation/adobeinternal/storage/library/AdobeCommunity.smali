.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;
.super Ljava/lang/Object;
.source "AdobeCommunity.java"


# static fields
.field static final MARKET_COMMUNITY_ID:Ljava/lang/String; = "market"


# instance fields
.field private final _communityID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;->_communityID:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static getMarketCommunityId()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;

    const-string/jumbo v1, "market"

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCommunityCategories(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityCategory;",
            ">;>;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future;"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommunityID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunity;->_communityID:Ljava/lang/String;

    return-object v0
.end method
