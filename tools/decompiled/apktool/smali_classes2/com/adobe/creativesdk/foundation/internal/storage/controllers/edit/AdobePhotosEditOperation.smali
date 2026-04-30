.class public final enum Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;
.super Ljava/lang/Enum;
.source "AdobePhotosEditOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

.field public static final enum ADOBE_CC_PHOTO_ITEM_COVER_ASSET:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

.field public static final enum ADOBE_CC_PHOTO_OPERATION_ERASE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    const-string/jumbo v1, "ADOBE_CC_PHOTO_OPERATION_ERASE"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->ADOBE_CC_PHOTO_OPERATION_ERASE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    .line 8
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    const-string/jumbo v1, "ADOBE_CC_PHOTO_ITEM_COVER_ASSET"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->ADOBE_CC_PHOTO_ITEM_COVER_ASSET:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->ADOBE_CC_PHOTO_OPERATION_ERASE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->ADOBE_CC_PHOTO_ITEM_COVER_ASSET:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;

    return-object v0
.end method
