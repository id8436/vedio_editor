.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;
.super Ljava/lang/Object;
.source "AdobeStorageSortIndexCollation.java"


# instance fields
.field public currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

.field public sectionDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastSortState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    .line 40
    return-void
.end method


# virtual methods
.method public checkIfLastInSection(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 143
    move v1, v2

    move v3, v2

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 150
    add-int/lit8 v0, v3, -0x1

    if-ne p1, v0, :cond_1

    .line 151
    const/4 v2, 0x1

    .line 159
    :cond_0
    return v2

    .line 155
    :cond_1
    add-int/lit8 v0, v3, -0x1

    if-lt p1, v0, :cond_0

    .line 146
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public abstract createSectionDataFromMaster(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;)Z"
        }
    .end annotation
.end method

.method public flattenedItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v4, v3

    .line 63
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 65
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;

    .line 66
    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->item:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 60
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 70
    :cond_1
    return-object v5
.end method

.method public getFlattenedAssetsItemsList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v4, v3

    .line 99
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 101
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;

    .line 102
    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->item:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 96
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 106
    :cond_1
    return-object v5
.end method

.method public getPositionForSection(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    move v1, v0

    move v2, v0

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 114
    if-ge v1, p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_0
    return v2
.end method

.method public getSectionForPosition(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 128
    move v1, v0

    move v2, v0

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 132
    if-lt p1, v2, :cond_0

    add-int v3, v2, v0

    if-ge p1, v3, :cond_0

    .line 138
    :goto_1
    return v1

    .line 135
    :cond_0
    add-int/2addr v2, v0

    .line 129
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public numberOfSections()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract sectionIndexTitles()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sectionTitles()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract titleForHeaderInSection(I)Ljava/lang/String;
.end method
