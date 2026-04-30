.class synthetic Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$8;
.super Ljava/lang/Object;
.source "AdobeAssetFolder.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFolderOrderBy:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFolderOrderDirection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 498
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->values()[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$8;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFolderOrderDirection:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$8;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFolderOrderDirection:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$8;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFolderOrderDirection:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_DESCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 485
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->values()[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$8;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFolderOrderBy:[I

    :try_start_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$8;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFolderOrderBy:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$8;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFolderOrderBy:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 498
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
