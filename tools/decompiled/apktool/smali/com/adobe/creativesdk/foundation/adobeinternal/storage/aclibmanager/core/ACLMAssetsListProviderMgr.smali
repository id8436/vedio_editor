.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;
.super Ljava/lang/Object;
.source "ACLMAssetsListProviderMgr.java"


# static fields
.field private static _sInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;


# instance fields
.field _providersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr$ProviderDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;->_providersList:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;

    .line 29
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;

    return-object v0
.end method


# virtual methods
.method public getProviderForUserAssetType(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetsListProvider;
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;->_providersList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr$ProviderDetails;

    .line 50
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr$ProviderDetails;->assetType:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    if-ne v2, p1, :cond_0

    .line 51
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr$ProviderDetails;->provider:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetsListProvider;

    .line 53
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/utils/ACLMDefaultProviderHelper;->getDefaultListProvider(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetsListProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public registerListProvider(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetsListProvider;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr$ProviderDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr$ProviderDetails;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr$1;)V

    .line 41
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr$ProviderDetails;->assetType:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 42
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr$ProviderDetails;->provider:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetsListProvider;

    .line 44
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;->_providersList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method
