.class synthetic Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode$1;
.super Ljava/lang/Object;
.source "AdobePSDLayerNode.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$psd$AdobePSDLayerNodeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 240
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode$1;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$psd$AdobePSDLayerNodeType:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode$1;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$psd$AdobePSDLayerNodeType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode$1;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$psd$AdobePSDLayerNodeType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeRGBPixels:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode$1;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$psd$AdobePSDLayerNodeType:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeSolidColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
