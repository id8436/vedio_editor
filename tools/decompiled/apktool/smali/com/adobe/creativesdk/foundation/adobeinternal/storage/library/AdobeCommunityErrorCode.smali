.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;
.super Ljava/lang/Enum;
.source "AdobeCommunityErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorAssetNotAttachedToCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorFileReadFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorFileWriteFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorInvalidJSONRepresentation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorInvalidPublicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorMissingCommunityID:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorMissingJSONData:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorNameCantBeEmptyOrNull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorNotEntitledToService:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorQueryExceedsAllowedValue:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorQueryURLEncodingFails:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorSizeExceedsAllowedValue:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

.field public static final enum AdobeCommunityErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x2

    .line 36
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorUnexpectedResponse"

    invoke-direct {v0, v1, v8, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 42
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorFileReadFailure"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorFileReadFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 48
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorFileWriteFailure"

    invoke-direct {v0, v1, v4, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorFileWriteFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 53
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorMissingJSONData"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorMissingJSONData:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 60
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorNotEntitledToService"

    const/4 v2, 0x4

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorNotEntitledToService:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 67
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorInvalidPublicationRecord"

    const/4 v2, 0x5

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorInvalidPublicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 72
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorInvalidJSONRepresentation"

    const/4 v2, 0x6

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorInvalidJSONRepresentation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 77
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorMissingCommunityID"

    const/4 v2, 0x7

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorMissingCommunityID:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 82
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorSizeExceedsAllowedValue"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v5, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorSizeExceedsAllowedValue:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 87
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorQueryExceedsAllowedValue"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v6, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorQueryExceedsAllowedValue:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 92
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorQueryURLEncodingFails"

    const/16 v2, 0xa

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorQueryURLEncodingFails:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 97
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorNameCantBeEmptyOrNull"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorNameCantBeEmptyOrNull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 102
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    const-string/jumbo v1, "AdobeCommunityErrorAssetNotAttachedToCloud"

    const/16 v2, 0xc

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorAssetNotAttachedToCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    .line 26
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x1

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorFileReadFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorFileWriteFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorMissingJSONData:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorNotEntitledToService:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorInvalidPublicationRecord:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorInvalidJSONRepresentation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorMissingCommunityID:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorSizeExceedsAllowedValue:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorQueryExceedsAllowedValue:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v1, v0, v6

    const/16 v1, 0xa

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorQueryURLEncodingFails:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorNameCantBeEmptyOrNull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v1, v0, v7

    const/16 v1, 0xc

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->AdobeCommunityErrorAssetNotAttachedToCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->_val:I

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunityErrorCode;->_val:I

    return v0
.end method
