.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;
.super Ljava/lang/Object;
.source "AdobeAssetDataSourceFilter.java"


# instance fields
.field private dataSources:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation
.end field

.field private filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allSupportedDataSources()Ljava/util/EnumSet;
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
    .line 104
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static createFromDataSources(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;-><init>()V

    .line 91
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    .line 92
    iput-object p0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->dataSources:Ljava/util/EnumSet;

    .line 93
    return-object v0
.end method


# virtual methods
.method public getDataSources()Ljava/util/EnumSet;
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
    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->dataSources:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getFilterType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    return-object v0
.end method

.method public getInclusiveDataSources()Ljava/util/EnumSet;
    .locals 3
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
    .line 48
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->isInclusive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->dataSources:Ljava/util/EnumSet;

    .line 59
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->allSupportedDataSources()Ljava/util/EnumSet;

    move-result-object v1

    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->dataSources:Ljava/util/EnumSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->dataSources:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->dataSources:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 57
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 59
    goto :goto_0
.end method

.method public isInclusive()Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;->ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
