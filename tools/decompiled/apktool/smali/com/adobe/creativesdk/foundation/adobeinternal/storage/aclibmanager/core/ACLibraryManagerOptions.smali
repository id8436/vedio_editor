.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;
.super Ljava/lang/Object;
.source "ACLibraryManagerOptions.java"


# instance fields
.field public _almHandler:Landroid/os/Handler;

.field public _almStartupOptions:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

.field public _defaultLibName:Ljava/lang/String;

.field public _designLibrariesFolder:Ljava/lang/String;

.field public _downloadPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

.field public _uploadPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLibraryManagerOptions(Ljava/util/ArrayList;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;-><init>()V

    .line 45
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestOnly:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoDownloadPolicy:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    .line 46
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableNonMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    .line 48
    iput-object p0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->elementTypesFilter:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;-><init>()V

    .line 53
    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_almStartupOptions:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_almHandler:Landroid/os/Handler;

    .line 56
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/ACLibraryManagerUtil;->getDefaultDesignLibrariesDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_designLibrariesFolder:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_uploadPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 58
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_downloadPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 60
    return-object v1
.end method

.method public static getDefaultOptions(Ljava/util/ArrayList;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->createLibraryManagerOptions(Ljava/util/ArrayList;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultOptionsWithSyncPriorities(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;",
            ")",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->createLibraryManagerOptions(Ljava/util/ArrayList;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;

    move-result-object v0

    .line 38
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_downloadPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 39
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_uploadPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 40
    return-object v0
.end method
