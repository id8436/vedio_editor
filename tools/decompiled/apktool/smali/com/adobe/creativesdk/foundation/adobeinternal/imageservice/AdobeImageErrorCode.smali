.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;
.super Ljava/lang/Enum;
.source "AdobeImageErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

.field public static final enum AdobeImageErrorInvalidImage:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

.field public static final enum AdobeImageErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

    const-string/jumbo v1, "AdobeImageErrorInvalidImage"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;->AdobeImageErrorInvalidImage:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

    .line 17
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

    const-string/jumbo v1, "AdobeImageErrorUnexpectedResponse"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;->AdobeImageErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;->AdobeImageErrorInvalidImage:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;->AdobeImageErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;->_val:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageErrorCode;->_val:I

    return v0
.end method
