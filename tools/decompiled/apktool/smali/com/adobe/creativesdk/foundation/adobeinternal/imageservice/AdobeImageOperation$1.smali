.class synthetic Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation$1;
.super Ljava/lang/Object;
.source "AdobeImageOperation.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageOutputDispositionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 297
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation$1;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageOutputDispositionType:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation$1;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageOutputDispositionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionNone:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation$1;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$imageservice$AdobeImageOutputDispositionType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionReference:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->ordinal()I

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
