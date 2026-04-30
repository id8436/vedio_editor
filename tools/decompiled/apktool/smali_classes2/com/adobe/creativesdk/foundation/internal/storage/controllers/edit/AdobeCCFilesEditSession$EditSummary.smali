.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;
.super Ljava/lang/Object;
.source "AdobeCCFilesEditSession.java"


# instance fields
.field public _errorAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;",
            ">;"
        }
    .end annotation
.end field

.field private _moveOperationInSameLocation:Z

.field public _successAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;",
            ">;"
        }
    .end annotation
.end field

.field public operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_moveOperationInSameLocation:Z

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_errorAssets:Ljava/util/ArrayList;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_successAssets:Ljava/util/ArrayList;

    .line 341
    return-void
.end method


# virtual methods
.method public getErrorCount()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_errorAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSuccessCount()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_successAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasMoveOperationInSameLocation()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 330
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_moveOperationInSameLocation:Z

    if-eqz v1, :cond_0

    .line 331
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_moveOperationInSameLocation:Z

    .line 333
    const/4 v0, 0x1

    .line 335
    :cond_0
    return v0
.end method

.method public setMoveOperationInSameLocation()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_moveOperationInSameLocation:Z

    .line 327
    return-void
.end method
