.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;
.super Ljava/lang/Object;
.source "AdobeStorageLibrarySelectionState.java"


# static fields
.field private static _sIsSelectModeActive:Z

.field private static _selectLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

.field private static _selectLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field private static _selectLibraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

.field private static _selectLibraryItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static creationSelectionLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 132
    :goto_0
    return-object v0

    .line 122
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;

    invoke-direct {v0, p1, v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->getAssetLibraryItemObject(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->getLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    move-result-object v1

    .line 131
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;

    invoke-direct {v0, p1, v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    goto :goto_0
.end method

.method public static creationSelectionLibraryFromCurrentSelection()Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->creationSelectionLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    return-object v0
.end method

.method public static getSelectedLibraryElement()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    return-object v0
.end method

.method public static getSelectedLibraryItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    return-object v0
.end method

.method public static hasSelection()Z
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLibraryItemSame(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 87
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 89
    :cond_0
    return v0
.end method

.method public static isSelectModeActive()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_sIsSelectModeActive:Z

    return v0
.end method

.method public static resetSelection()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    .line 63
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 64
    return-void
.end method

.method public static selectLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 57
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 58
    sput-object p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 59
    return-void
.end method

.method public static selectLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 0

    .prologue
    .line 52
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibraryItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    .line 53
    sput-object p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_selectLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    .line 54
    return-void
.end method

.method public static setSelectModeActive(Z)V
    .locals 0

    .prologue
    .line 48
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->_sIsSelectModeActive:Z

    .line 49
    return-void
.end method
