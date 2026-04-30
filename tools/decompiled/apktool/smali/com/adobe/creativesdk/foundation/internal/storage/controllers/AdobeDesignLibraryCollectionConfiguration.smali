.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;
.source "AdobeDesignLibraryCollectionConfiguration.java"


# static fields
.field public static final DESIGNLIBRARYITEMS_FILTER_KEY:Ljava/lang/String; = "design_library_items_key"

.field public static final DESIGNLIBRARYITEMS_FILTER_TYPE_KEY:Ljava/lang/String; = "design_library_items_filtertype"

.field public static final TARGET_LIBRARY_COMPOSITE_ID:Ljava/lang/String; = "designLibraryID"


# instance fields
.field private designLibraryItemFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;

.field private targetLibraryCompositeID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->createFromBundle(Landroid/os/Bundle;)V

    .line 61
    const-string/jumbo v0, "designLibraryID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;->targetLibraryCompositeID:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "design_library_items_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    .line 63
    const-string/jumbo v1, "design_library_items_filtertype"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;

    .line 64
    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->createFromDesignLibraryItems(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;->designLibraryItemFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;

    .line 65
    return-void
.end method

.method getDesignLibraryItemFilter()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;->designLibraryItemFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;

    return-object v0
.end method

.method public getTargetLibraryCompositeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;->targetLibraryCompositeID:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetLibraryCompositeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;->targetLibraryCompositeID:Ljava/lang/String;

    return-object v0
.end method
