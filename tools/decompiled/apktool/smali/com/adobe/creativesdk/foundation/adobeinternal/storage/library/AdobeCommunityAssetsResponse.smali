.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;
.super Ljava/lang/Object;
.source "AdobeCommunityAssetsResponse.java"


# instance fields
.field private _assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;",
            ">;"
        }
    .end annotation
.end field

.field private _nextPageHref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;->reset()V

    .line 36
    return-void
.end method


# virtual methods
.method public addAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;->_assets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public getAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;->_assets:Ljava/util/List;

    return-object v0
.end method

.method public getNextPageHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;->_nextPageHref:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;->_assets:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;->_nextPageHref:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setNextPageHref(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityAssetsResponse;->_nextPageHref:Ljava/lang/String;

    .line 44
    return-void
.end method
