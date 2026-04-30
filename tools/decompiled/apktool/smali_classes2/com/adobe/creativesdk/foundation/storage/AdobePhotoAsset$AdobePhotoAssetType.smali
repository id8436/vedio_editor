.class public final enum Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;
.super Ljava/lang/Enum;
.source "AdobePhotoAsset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

.field public static final enum AdobePhotoAssetTypeImage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    const-string/jumbo v1, "AdobePhotoAssetTypeImage"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;->AdobePhotoAssetTypeImage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;->AdobePhotoAssetTypeImage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;->_val:I

    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;->$VALUES:[Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$AdobePhotoAssetType;->_val:I

    return v0
.end method
