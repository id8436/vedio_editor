.class synthetic Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$7;
.super Ljava/lang/Object;
.source "AdobeCCPhotosEditSession.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$internal$storage$controllers$edit$AdobePhotosEditOperation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->values()[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$7;->$SwitchMap$com$adobe$creativesdk$foundation$internal$storage$controllers$edit$AdobePhotosEditOperation:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$7;->$SwitchMap$com$adobe$creativesdk$foundation$internal$storage$controllers$edit$AdobePhotosEditOperation:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->ADOBE_CC_PHOTO_OPERATION_ERASE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession$7;->$SwitchMap$com$adobe$creativesdk$foundation$internal$storage$controllers$edit$AdobePhotosEditOperation:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->ADOBE_CC_PHOTO_ITEM_COVER_ASSET:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
