.class public final enum Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;
.super Ljava/lang/Enum;
.source "AdobeUCFErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

.field public static final enum AdobeUCFErrorArchiveCreateFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

.field public static final enum AdobeUCFErrorArchiveInvalid:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

.field public static final enum AdobeUCFErrorArchiveReadFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

.field public static final enum AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

.field public static final enum AdobeUCFErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const-string/jumbo v1, "AdobeUCFErrorArchiveInvalid"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveInvalid:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const-string/jumbo v1, "AdobeUCFErrorArchiveCreateFailed"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveCreateFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    .line 36
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const-string/jumbo v1, "AdobeUCFErrorArchiveWriteFailed"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    .line 41
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const-string/jumbo v1, "AdobeUCFErrorArchiveReadFailed"

    invoke-direct {v0, v1, v5, v5}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveReadFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    .line 46
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const-string/jumbo v1, "AdobeUCFErrorOperationCancelled"

    invoke-direct {v0, v1, v6, v6}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveInvalid:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveCreateFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveReadFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->_val:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->_val:I

    return v0
.end method
