.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession$EditSummary;
.super Ljava/lang/Object;
.source "AdobeMobileCreationEditSession.java"


# static fields
.field private static isEditCompleted:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEditStatus()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession$EditSummary;->isEditCompleted:Z

    return v0
.end method

.method public static setEditError()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession$EditSummary;->isEditCompleted:Z

    .line 80
    return-void
.end method

.method public static setEditSuccess()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeMobileCreationEditSession$EditSummary;->isEditCompleted:Z

    .line 76
    return-void
.end method
