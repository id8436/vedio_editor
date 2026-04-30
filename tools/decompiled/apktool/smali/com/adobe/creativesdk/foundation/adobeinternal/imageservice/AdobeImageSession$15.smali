.class synthetic Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;
.super Ljava/lang/Object;
.source "AdobeImageSession.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAdjustType:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAutoCropSortType:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCalibrateType:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCropType:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFillType:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFitType:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$agc$AdobeAGCCreationType:[I

.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1552
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$agc$AdobeAGCCreationType:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$agc$AdobeAGCCreationType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;->ADOBE_AGC_CREATION_TYPE_AI:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_20

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$agc$AdobeAGCCreationType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;->ADOBE_AGC_CREATION_TYPE_PSD:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1f

    :goto_1
    :try_start_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$agc$AdobeAGCCreationType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;->ADOBE_AGC_CREATION_TYPE_UNKNOWN:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/agc/AdobeAGCCreationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1e

    .line 1358
    :goto_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFitType:[I

    :try_start_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFitType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->AdobeImageFit:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1d

    :goto_3
    :try_start_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFitType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->AdobeImageConstrain:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1c

    :goto_4
    :try_start_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFitType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->AdobeImageCrop:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1b

    :goto_5
    :try_start_6
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFitType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->AdobeImageWrap:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1a

    :goto_6
    :try_start_7
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFitType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->AdobeImageStretch:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_19

    :goto_7
    :try_start_8
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFitType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->AdobeImageHFit:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_18

    :goto_8
    :try_start_9
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFitType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->AdobeImageVFit:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFitType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_17

    .line 1343
    :goto_9
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFillType:[I

    :try_start_a
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFillType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;->AdobeImageRegularFill:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_16

    :goto_a
    :try_start_b
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFillType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;->AdobeImageGBFill:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_15

    :goto_b
    :try_start_c
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFillType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;->AdobeImageGBLFill:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_14

    :goto_c
    :try_start_d
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageFillType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;->AdobeImageLBCFill:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageFillType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_13

    .line 1330
    :goto_d
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCropType:[I

    :try_start_e
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCropType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;->AdobeImageNoCrop:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_12

    :goto_e
    :try_start_f
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCropType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;->AdobeImageCropToFit:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_11

    :goto_f
    :try_start_10
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCropType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;->AdobeImageSmartFillCrop:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCropType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 1317
    :goto_10
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCalibrateType:[I

    :try_start_11
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCalibrateType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;->AdobeImageCalibrateAll:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_f

    :goto_11
    :try_start_12
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCalibrateType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;->AdobeImageCalibrateAllFixCop:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_e

    :goto_12
    :try_start_13
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageCalibrateType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;->AdobeImageCalibrateAllFixK:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageCalibrateType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_d

    .line 1300
    :goto_13
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAdjustType:[I

    :try_start_14
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAdjustType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->AdobeImageFullAdjust:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_c

    :goto_14
    :try_start_15
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAdjustType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->AdobeImageEyeLevelAdjust:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_b

    :goto_15
    :try_start_16
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAdjustType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->AdobeImageNoPerspectiveAdjust:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_a

    :goto_16
    :try_start_17
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAdjustType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->AdobeImageRectificationAdjust:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_9

    :goto_17
    :try_start_18
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAdjustType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->AdobeImageAdjustAll:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAdjustType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_8

    .line 155
    :goto_18
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAutoCropSortType:[I

    :try_start_19
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAutoCropSortType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;->AdobeImageSortOnAll:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_7

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAutoCropSortType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;->AdobeImageSortOnComposition:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_6

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAutoCropSortType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;->AdobeImageSortOnSaliency:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_5

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageAutoCropSortType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;->AdobeImageSortOnCutThrough:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageAutoCropSortType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_4

    .line 87
    :goto_1c
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->values()[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    :try_start_1d
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentProductionUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_3

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentStageUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_2

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentCloudLabsUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$15;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIdentityManagementServiceUndefined:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_0

    :goto_20
    return-void

    :catch_0
    move-exception v0

    goto :goto_20

    :catch_1
    move-exception v0

    goto :goto_1f

    :catch_2
    move-exception v0

    goto :goto_1e

    :catch_3
    move-exception v0

    goto :goto_1d

    .line 155
    :catch_4
    move-exception v0

    goto :goto_1c

    :catch_5
    move-exception v0

    goto :goto_1b

    :catch_6
    move-exception v0

    goto :goto_1a

    :catch_7
    move-exception v0

    goto :goto_19

    .line 1300
    :catch_8
    move-exception v0

    goto :goto_18

    :catch_9
    move-exception v0

    goto/16 :goto_17

    :catch_a
    move-exception v0

    goto/16 :goto_16

    :catch_b
    move-exception v0

    goto/16 :goto_15

    :catch_c
    move-exception v0

    goto/16 :goto_14

    .line 1317
    :catch_d
    move-exception v0

    goto/16 :goto_13

    :catch_e
    move-exception v0

    goto/16 :goto_12

    :catch_f
    move-exception v0

    goto/16 :goto_11

    .line 1330
    :catch_10
    move-exception v0

    goto/16 :goto_10

    :catch_11
    move-exception v0

    goto/16 :goto_f

    :catch_12
    move-exception v0

    goto/16 :goto_e

    .line 1343
    :catch_13
    move-exception v0

    goto/16 :goto_d

    :catch_14
    move-exception v0

    goto/16 :goto_c

    :catch_15
    move-exception v0

    goto/16 :goto_b

    :catch_16
    move-exception v0

    goto/16 :goto_a

    .line 1358
    :catch_17
    move-exception v0

    goto/16 :goto_9

    :catch_18
    move-exception v0

    goto/16 :goto_8

    :catch_19
    move-exception v0

    goto/16 :goto_7

    :catch_1a
    move-exception v0

    goto/16 :goto_6

    :catch_1b
    move-exception v0

    goto/16 :goto_5

    :catch_1c
    move-exception v0

    goto/16 :goto_4

    :catch_1d
    move-exception v0

    goto/16 :goto_3

    .line 1552
    :catch_1e
    move-exception v0

    goto/16 :goto_2

    :catch_1f
    move-exception v0

    goto/16 :goto_1

    :catch_20
    move-exception v0

    goto/16 :goto_0
.end method
