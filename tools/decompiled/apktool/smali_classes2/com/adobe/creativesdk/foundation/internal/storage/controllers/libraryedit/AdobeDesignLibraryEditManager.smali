.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;
.super Ljava/lang/Object;
.source "AdobeDesignLibraryEditManager.java"


# static fields
.field static _session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

.field static editCompletionHandled:Z

.field static editStarted:Z

.field static isEditInProgress:Z

.field static progressValue:D

.field static updateCollectionDueToItemEdit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    sput-boolean v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->editStarted:Z

    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->editCompletionHandled:Z

    .line 15
    sput-boolean v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->updateCollectionDueToItemEdit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSession(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    .line 65
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    return-object v0
.end method

.method public static createSession(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    .line 70
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    return-object v0
.end method

.method public static getLastSession()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    return-object v0
.end method

.method public static getProgressValue()D
    .locals 2

    .prologue
    .line 34
    sget-wide v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->progressValue:D

    return-wide v0
.end method

.method public static hasEditCompletionHandled()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->editCompletionHandled:Z

    return v0
.end method

.method public static hasEditStarted()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->editStarted:Z

    return v0
.end method

.method public static isEditInProgress()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->isEditInProgress:Z

    return v0
.end method

.method public static isUpdateCollectionDueToItemEdit()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->updateCollectionDueToItemEdit:Z

    return v0
.end method

.method public static setEditCompletionHandled(Z)V
    .locals 0

    .prologue
    .line 46
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->editCompletionHandled:Z

    .line 47
    return-void
.end method

.method public static setEditInProgress(Z)V
    .locals 0

    .prologue
    .line 38
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->isEditInProgress:Z

    .line 39
    return-void
.end method

.method public static setEditStarted(Z)V
    .locals 0

    .prologue
    .line 55
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->editStarted:Z

    .line 56
    return-void
.end method

.method public static setProgressValue(D)V
    .locals 0

    .prologue
    .line 30
    sput-wide p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->progressValue:D

    .line 31
    return-void
.end method

.method public static setUpdateCollectionDueToItemEdit(Z)V
    .locals 0

    .prologue
    .line 24
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->updateCollectionDueToItemEdit:Z

    .line 25
    return-void
.end method
