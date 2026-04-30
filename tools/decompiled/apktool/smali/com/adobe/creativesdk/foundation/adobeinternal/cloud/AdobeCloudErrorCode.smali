.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;
.super Ljava/lang/Enum;
.source "AdobeCloudErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

.field public static final enum ADOBE_CLOUD_ERROR_CLOUD_NOT_FOUND:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

.field public static final enum ADOBE_CLOUD_ERROR_DECODE_FAILURE:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

.field public static final enum ADOBE_CLOUD_ERROR_INVALID_CLOUD:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

.field public static final enum ADOBE_CLOUD_ERROR_MISSING_JSON_DATA:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

.field public static final enum ADOBE_CLOUD_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 35
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    const-string/jumbo v1, "ADOBE_CLOUD_ERROR_UNEXPECTED_RESPONSE"

    invoke-direct {v0, v1, v6, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    .line 40
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    const-string/jumbo v1, "ADOBE_CLOUD_ERROR_MISSING_JSON_DATA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_MISSING_JSON_DATA:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    .line 45
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    const-string/jumbo v1, "ADOBE_CLOUD_ERROR_DECODE_FAILURE"

    invoke-direct {v0, v1, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_DECODE_FAILURE:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    .line 50
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    const-string/jumbo v1, "ADOBE_CLOUD_ERROR_INVALID_CLOUD"

    invoke-direct {v0, v1, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_INVALID_CLOUD:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    .line 55
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    const-string/jumbo v1, "ADOBE_CLOUD_ERROR_CLOUD_NOT_FOUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_CLOUD_NOT_FOUND:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_MISSING_JSON_DATA:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_DECODE_FAILURE:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_INVALID_CLOUD:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->ADOBE_CLOUD_ERROR_CLOUD_NOT_FOUND:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->val:I

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudErrorCode;->val:I

    return v0
.end method
