.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;
.super Ljava/lang/Object;
.source "AdobeAssetDesignLibraryItemFilter.java"


# instance fields
.field private designLibraryItemTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;",
            ">;"
        }
    .end annotation
.end field

.field private filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromDesignLibraryItems(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;-><init>()V

    .line 31
    iput-object p0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->designLibraryItemTypes:Ljava/util/EnumSet;

    .line 32
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;

    .line 34
    return-object v0
.end method


# virtual methods
.method public getDesignLibraryItems()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->designLibraryItemTypes:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getFilterType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;

    return-object v0
.end method

.method public getInclusiveDesignLibraryItems()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->isInclusive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->designLibraryItemTypes:Ljava/util/EnumSet;

    .line 79
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->designLibraryItemTypes:Ljava/util/EnumSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->designLibraryItemTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->designLibraryItemTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    .line 77
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 79
    goto :goto_0
.end method

.method public isInclusive()Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->filterType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;->ADOBE_ASSET_DESIGNLIBRARYITEM_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
