.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;
.super Ljava/lang/Object;
.source "AdobeAssetMainBrowserConfiguration.java"


# static fields
.field public static final ADOBE_CLOUD_KEY:Ljava/lang/String; = "ADOBE_CLOUD"

.field public static final DATA_SOURCE_FILTER_ARRAY_KEY:Ljava/lang/String; = "DATA_SOURCE_FILTER_ARRAY"

.field public static final DATA_SOURCE_FILTER_TYPE_KEY:Ljava/lang/String; = "DATA_SOURCE_FILTER_TYPE"

.field public static final DESIGNLIBRARYITEMS_FILTER_ARRAY_KEY:Ljava/lang/String; = "DESIGNLIBRARYITEMS_FILTER_ARRAY"

.field public static final DESIGNLIBRARYITEMS_FILTER_TYPE_KEY:Ljava/lang/String; = "DESIGNLIBRARYITEMS_FILTER_TYPE"

.field public static final MIME_TYPE_FILTER_ARRAY_KEY:Ljava/lang/String; = "MIME_TYPES_FILTER_ARRAY"

.field public static final MIME_TYPE_FILTER_TYPE_KEY:Ljava/lang/String; = "MIME_TYPES_FILTER_TYPE"


# instance fields
.field private _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private dataSourcesFilter:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation
.end field

.field private isDataSourceFilterInclusive:Z

.field private isMimeTypeFilterInclusive:Z

.field private mimeTypesFilter:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumSet;ZLjava/util/EnumSet;ZLcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;Z",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;Z",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->dataSourcesFilter:Ljava/util/EnumSet;

    .line 49
    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->isDataSourceFilterInclusive:Z

    .line 50
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->mimeTypesFilter:Ljava/util/EnumSet;

    .line 51
    iput-boolean p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->isMimeTypeFilterInclusive:Z

    .line 52
    if-eqz p5, :cond_0

    .line 53
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getMatchingCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    return-object v0
.end method

.method public getDataSourcesFilter()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->dataSourcesFilter:Ljava/util/EnumSet;

    return-object v0
.end method

.method getIsDataSourceFilterInclusive()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->isDataSourceFilterInclusive:Z

    return v0
.end method

.method getIsMimeTypeFilterInclusive()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->isMimeTypeFilterInclusive:Z

    return v0
.end method

.method public getMimeTypesFilter()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;->mimeTypesFilter:Ljava/util/EnumSet;

    return-object v0
.end method
