.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;
.super Ljava/lang/Object;
.source "AdobeCCPhotosEditManager.java"


# static fields
.field static _session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;

.field static editCompletionHandled:Z

.field static editStarted:Z

.field static isEditInProgress:Z

.field static progressValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->editStarted:Z

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->editCompletionHandled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSession(Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;
    .locals 6

    .prologue
    .line 56
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobePhotosEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;

    .line 57
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;

    return-object v0
.end method

.method public static getLastSession()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditSession;

    return-object v0
.end method

.method public static getProgressValue()D
    .locals 2

    .prologue
    .line 26
    sget-wide v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->progressValue:D

    return-wide v0
.end method

.method public static hasEditCompletionHandled()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->editCompletionHandled:Z

    return v0
.end method

.method public static hasEditStarted()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->editStarted:Z

    return v0
.end method

.method public static isEditInProgress()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->isEditInProgress:Z

    return v0
.end method

.method public static setEditCompletionHandled(Z)V
    .locals 0

    .prologue
    .line 38
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->editCompletionHandled:Z

    .line 39
    return-void
.end method

.method public static setEditInProgress(Z)V
    .locals 0

    .prologue
    .line 30
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->isEditInProgress:Z

    .line 31
    return-void
.end method

.method public static setEditStarted(Z)V
    .locals 0

    .prologue
    .line 47
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->editStarted:Z

    .line 48
    return-void
.end method

.method public static setProgressValue(D)V
    .locals 0

    .prologue
    .line 22
    sput-wide p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCPhotosEditManager;->progressValue:D

    .line 23
    return-void
.end method
