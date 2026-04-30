.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;
.super Ljava/lang/Object;
.source "AdobeAssetMobileCreationSelectionState.java"


# static fields
.field private static _sIsSelectModeActive:Z

.field private static _selectPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

.field private static _selectPackageItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static creationSelectionPackage(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 85
    .line 87
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    if-eqz v1, :cond_2

    .line 91
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;

    move-object v0, p1

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;I)V

    move-object v0, v1

    .line 92
    :cond_2
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;

    if-eqz v1, :cond_3

    .line 93
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;

    move-object v0, p1

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;I)V

    move-object v0, v1

    .line 94
    :cond_3
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    if-eqz v1, :cond_4

    .line 95
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSMixFile;

    move-object v0, p1

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSMixFile;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;I)V

    move-object v0, v1

    .line 96
    :cond_4
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;

    if-eqz v1, :cond_5

    .line 97
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;

    move-object v0, p1

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;I)V

    move-object v0, v1

    .line 98
    :cond_5
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSFixFile;

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSFixFile;

    move-object v0, p1

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSFixFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSFixFile;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSFixFile;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static creationSelectionPackageFromCurrentSelection()Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_selectPackageItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_selectPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->creationSelectionPackage(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedPackage()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_selectPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    return-object v0
.end method

.method public static getSelectedPackageItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_selectPackageItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method public static hasSelection()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_selectPackageItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_selectPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageItemSame(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_selectPackageItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 74
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_selectPackageItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 76
    :cond_0
    return v0
.end method

.method public static isSelectModeActive()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_sIsSelectModeActive:Z

    return v0
.end method

.method public static resetSelection()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_selectPackageItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 56
    return-void
.end method

.method public static selectPackageItem(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 0

    .prologue
    .line 50
    sput-object p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_selectPackageItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 51
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_selectPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 52
    return-void
.end method

.method public static setSelectModeActive(Z)V
    .locals 0

    .prologue
    .line 46
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->_sIsSelectModeActive:Z

    .line 47
    return-void
.end method
