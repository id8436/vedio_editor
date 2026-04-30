.class public final enum Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;
.super Ljava/lang/Enum;
.source "AdobeUCFArchiveItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

.field public static final enum AdobeUCFArchiveItemData:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

.field public static final enum AdobeUCFArchiveItemFile:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    const-string/jumbo v1, "AdobeUCFArchiveItemFile"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->AdobeUCFArchiveItemFile:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    .line 22
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    const-string/jumbo v1, "AdobeUCFArchiveItemData"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->AdobeUCFArchiveItemData:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->AdobeUCFArchiveItemFile:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->AdobeUCFArchiveItemData:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->_val:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItemType;->_val:I

    return v0
.end method
