.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;
.super Ljava/lang/Object;
.source "AdobeStorageAssetSelectionState.java"


# static fields
.field static _selectionStateTimeStamp:I

.field static isMultiSelectModeActive:Z

.field static isMultiSelectModeSupported:Z

.field static sharedSelectedAssetsCollection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeActive:Z

    .line 34
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeSupported:Z

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssetsCollection:Ljava/util/HashMap;

    .line 40
    const/4 v0, 0x1

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->_selectionStateTimeStamp:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 3

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->setSelectionStateChanged()V

    .line 73
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssets()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 76
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    goto :goto_0
.end method

.method public static containsAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Z
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssets()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getCurrentSelectionTimeStamp()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->_selectionStateTimeStamp:I

    return v0
.end method

.method public static isAssetSelected()Z
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssets()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultiSelectModeActive()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeActive:Z

    return v0
.end method

.method public static isMultiSelectModeSupported()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeSupported:Z

    return v0
.end method

.method public static refreshSelectionListWithNewlyLoadedAssets(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeActive:Z

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssets()Ljava/util/HashMap;

    move-result-object v4

    .line 230
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v2, v1

    move v3, v1

    .line 243
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 245
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 251
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getGUID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 252
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 255
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 257
    const/4 v1, 0x1

    .line 258
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_2

    .line 263
    :cond_6
    if-eqz v3, :cond_0

    .line 265
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->setSelectionStateChanged()V

    .line 266
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 267
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto :goto_4
.end method

.method public static removeSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 3

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->setSelectionStateChanged()V

    .line 93
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssets()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 96
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    goto :goto_0
.end method

.method public static resetSelectedAssets()V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssetsCollection:Ljava/util/HashMap;

    .line 131
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->setSelectionStateChanged()V

    .line 132
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 133
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 134
    return-void
.end method

.method public static selectedAssetCount()I
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssets()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public static selectedAssets()Ljava/util/ArrayList;
    .locals 2
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
    .line 209
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssets()Ljava/util/HashMap;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static setIsMultiSelectModeActive(Z)V
    .locals 3

    .prologue
    .line 143
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeActive:Z

    if-ne v0, p0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeActive:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    .line 147
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->resetSelectedAssets()V

    .line 149
    :cond_1
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeActive:Z

    .line 151
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetMultiselectModeDidChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 152
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    goto :goto_0
.end method

.method public static setIsMultiSelectModeSupported(Z)V
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeSupported:Z

    if-ne v0, p0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 175
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeSupported:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    .line 176
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->resetSelectedAssets()V

    .line 178
    :cond_1
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeSupported:Z

    goto :goto_0
.end method

.method private static setSelectionStateChanged()V
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->_selectionStateTimeStamp:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->_selectionStateTimeStamp:I

    .line 56
    return-void
.end method

.method public static sharedSelectedAssets()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssetsCollection:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssetsCollection:Ljava/util/HashMap;

    .line 47
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->sharedSelectedAssetsCollection:Ljava/util/HashMap;

    return-object v0
.end method
