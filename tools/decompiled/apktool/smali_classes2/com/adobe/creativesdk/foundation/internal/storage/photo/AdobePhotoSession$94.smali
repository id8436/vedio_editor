.class synthetic Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoAssetRendition$AdobePhotoAssetRenditionType:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoCollection$AdobePhotoCollectionFlag:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3934
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->values()[Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoAssetRendition$AdobePhotoAssetRenditionType:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoAssetRendition$AdobePhotoAssetRenditionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_2048:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoAssetRendition$AdobePhotoAssetRenditionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_1024:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoAssetRendition$AdobePhotoAssetRenditionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_FAVORITE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoAssetRendition$AdobePhotoAssetRenditionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_FULL_SIZE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoAssetRendition$AdobePhotoAssetRenditionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_PREVIEW:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoAssetRendition$AdobePhotoAssetRenditionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_THUMBNAIL:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoAssetRendition$AdobePhotoAssetRenditionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ADOBE_PHOTO_ASSET_RENDITION_TYPE_IMAGE_THUMBNAIL_2X:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition$AdobePhotoAssetRenditionType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    .line 2730
    :goto_6
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->values()[Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoCollection$AdobePhotoCollectionFlag:[I

    :try_start_7
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoCollection$AdobePhotoCollectionFlag:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->ADOBE_PHOTO_COLLECTION_FLAG_ALL:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoCollection$AdobePhotoCollectionFlag:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->ADOBE_PHOTO_COLLECTION_FLAG_PICKED:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoCollection$AdobePhotoCollectionFlag:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->ADOBE_PHOTO_COLLECTION_FLAG_UNFLAGGED:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobePhotoCollection$AdobePhotoCollectionFlag:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->ADOBE_PHOTO_COLLECTION_FLAG_REJECTED:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    .line 176
    :goto_a
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->values()[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    :try_start_b
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentProductionUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    :try_start_c
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentStageUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentCloudLabsUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentTestUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$94;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIdentityManagementServiceUndefined:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    return-void

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_b

    .line 2730
    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_7

    .line 3934
    :catch_9
    move-exception v0

    goto/16 :goto_6

    :catch_a
    move-exception v0

    goto/16 :goto_5

    :catch_b
    move-exception v0

    goto/16 :goto_4

    :catch_c
    move-exception v0

    goto/16 :goto_3

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_1

    :catch_f
    move-exception v0

    goto/16 :goto_0
.end method
