.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;
.super Ljava/lang/Enum;
.source "AdobeImageOutputDispositionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

.field public static final enum AdobeImageOutputDispositionDownload:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

.field public static final enum AdobeImageOutputDispositionNone:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

.field public static final enum AdobeImageOutputDispositionReference:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    const-string/jumbo v1, "AdobeImageOutputDispositionNone"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionNone:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    .line 8
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    const-string/jumbo v1, "AdobeImageOutputDispositionReference"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionReference:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    .line 9
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    const-string/jumbo v1, "AdobeImageOutputDispositionDownload"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionDownload:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionNone:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionReference:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->AdobeImageOutputDispositionDownload:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOutputDispositionType;

    return-object v0
.end method
