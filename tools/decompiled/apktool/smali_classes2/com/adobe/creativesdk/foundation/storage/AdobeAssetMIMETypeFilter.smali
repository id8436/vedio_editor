.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;
.super Ljava/lang/Object;
.source "AdobeAssetMIMETypeFilter.java"


# instance fields
.field private filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

.field private mimeTypes:Ljava/util/EnumSet;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromMimeTypes(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;-><init>()V

    .line 69
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;->filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    .line 70
    iput-object p0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;->mimeTypes:Ljava/util/EnumSet;

    .line 71
    return-object v0
.end method


# virtual methods
.method public getFilterType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;->filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    return-object v0
.end method

.method public getMimeTypes()Ljava/util/EnumSet;
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
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;->mimeTypes:Ljava/util/EnumSet;

    return-object v0
.end method

.method public isInclusive()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;->filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;->ADOBE_ASSET_MIMETYPE_FILTERTYPE_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
