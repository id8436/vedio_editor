.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;
.super Ljava/lang/Object;
.source "AdobeDesignLibraryEditSession.java"


# instance fields
.field private _moveOperationInSameLocation:Z

.field private editSucceeded:Z

.field public operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->_moveOperationInSameLocation:Z

    .line 493
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->editSucceeded:Z

    return-void
.end method


# virtual methods
.method public hasMoveOperationInSameLocation()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 501
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->_moveOperationInSameLocation:Z

    if-eqz v1, :cond_0

    .line 502
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->_moveOperationInSameLocation:Z

    .line 504
    const/4 v0, 0x1

    .line 506
    :cond_0
    return v0
.end method

.method public isEditSucceeded()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->editSucceeded:Z

    return v0
.end method

.method public setEditSucceeded(Z)V
    .locals 0

    .prologue
    .line 514
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->editSucceeded:Z

    .line 515
    return-void
.end method

.method public setMoveOperationInSameLocation()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->_moveOperationInSameLocation:Z

    .line 498
    return-void
.end method
