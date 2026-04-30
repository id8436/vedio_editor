.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;
.super Ljava/lang/Object;
.source "ACLMAssetOperationsProviderMgr.java"


# static fields
.field private static _sInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;


# instance fields
.field _providersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr$ProviderDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;->_providersList:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;

    .line 30
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;

    return-object v0
.end method


# virtual methods
.method public getProviderForUserAssetType(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetOperationsProvider;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;->_providersList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr$ProviderDetails;

    .line 51
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr$ProviderDetails;->assetType:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    if-ne v2, p1, :cond_0

    .line 52
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr$ProviderDetails;->provider:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetOperationsProvider;

    .line 55
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/utils/ACLMDefaultProviderHelper;->getDefaultAssetOperationProvider(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetOperationsProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public registerProvider(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetOperationsProvider;)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr$ProviderDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr$ProviderDetails;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr$1;)V

    .line 42
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr$ProviderDetails;->assetType:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 43
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr$ProviderDetails;->provider:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetOperationsProvider;

    .line 45
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetOperationsProviderMgr;->_providersList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
