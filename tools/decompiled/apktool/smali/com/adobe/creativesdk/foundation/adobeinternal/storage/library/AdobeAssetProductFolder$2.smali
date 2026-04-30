.class synthetic Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;
.super Ljava/lang/Object;
.source "AdobeAssetProductFolder.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$library$AdobeAssetProduct:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 270
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->values()[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->AdobeAssetPackageSharedProjectTypeSinglePage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->AdobeAssetPackageSharedProjectTypeMultiPage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->AdobeAssetPackageSharedProjectTypeMaxDemo:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    .line 232
    :goto_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$library$AdobeAssetProduct:[I

    :try_start_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$library$AdobeAssetProduct:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductComposition:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$library$AdobeAssetProduct:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductDraw:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$library$AdobeAssetProduct:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductPSMix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$library$AdobeAssetProduct:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductPSFix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$library$AdobeAssetProduct:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductSketch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    .line 270
    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
