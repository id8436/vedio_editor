.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;
.super Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;
.source "AdobeStorageAlphaIndexCollation.java"


# instance fields
.field indexTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;-><init>()V

    return-void
.end method


# virtual methods
.method public createSectionDataFromMaster(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->indexTitles:Ljava/util/ArrayList;

    .line 35
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return v2

    :cond_0
    move v1, v2

    .line 43
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 45
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 47
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;-><init>()V

    .line 48
    iput-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->item:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 49
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->name:Ljava/lang/String;

    .line 50
    iput v1, v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->originalIndex:I

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->indexTitles:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 59
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->sectionNumber:I

    .line 61
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->indexTitles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 67
    :cond_1
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->indexTitles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 68
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageItemSectionData;->sectionNumber:I

    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 75
    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public sectionIndexTitles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->indexTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public sectionTitles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->indexTitles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public titleForHeaderInSection(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->indexTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;->indexTitles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
