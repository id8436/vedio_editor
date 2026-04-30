.class public final enum Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;
.super Ljava/lang/Enum;
.source "AdobeUploadCreateNewFolderDialogFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;",
        ">;",
        "Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;

.field public static final enum AdobeNewFolderCreated:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;

    const-string/jumbo v1, "AdobeNewFolderCreated"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;->AdobeNewFolderCreated:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;->AdobeNewFolderCreated:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;

    aput-object v1, v0, v2

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$AdobeFolderCreationNotificationID;

    return-object v0
.end method
