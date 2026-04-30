.class final enum Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;
.super Ljava/lang/Enum;
.source "AdobeShowUploadTasksActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

.field public static final enum AdobeAssetFolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

.field public static final enum AdobeDCXManifest:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

.field public static final enum AdobePhotoCollection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    const-string/jumbo v1, "AdobeAssetFolder"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeAssetFolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    .line 73
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    const-string/jumbo v1, "AdobeDCXManifest"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeDCXManifest:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    .line 74
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    const-string/jumbo v1, "AdobePhotoCollection"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobePhotoCollection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeAssetFolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeDCXManifest:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobePhotoCollection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    return-object v0
.end method
