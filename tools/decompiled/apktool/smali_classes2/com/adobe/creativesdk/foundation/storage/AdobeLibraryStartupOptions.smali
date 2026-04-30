.class public Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;
.super Ljava/lang/Object;
.source "AdobeLibraryStartupOptions.java"


# instance fields
.field public autoDownloadContentTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public autoDownloadPolicy:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

.field public autoSyncInterval:J

.field public elementTypesFilter:Ljava/util/ArrayList;

.field public includeBookmarkedLibraries:Z

.field public renditionSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestOnly:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoDownloadPolicy:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    .line 92
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoSyncInterval:J

    .line 93
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableNonMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->includeBookmarkedLibraries:Z

    .line 95
    return-void
.end method
