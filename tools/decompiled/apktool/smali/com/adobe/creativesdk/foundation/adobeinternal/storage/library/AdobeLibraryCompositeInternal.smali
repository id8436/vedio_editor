.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
.source "AdobeLibraryCompositeInternal.java"


# instance fields
.field _isUnShared:Z


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->_isUnShared:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->_isUnShared:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->_isUnShared:Z

    .line 57
    return-void
.end method

.method public static getElementsDCXNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsDCXNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    return-object v0
.end method

.method public static getElementsNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public static getRemovedElementsDCXNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getRemovedElementsDCXNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    move-result-object v0

    return-object v0
.end method

.method public addCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    move-result-object v0

    return-object v0
.end method

.method public addElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    return-object v0
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    return-object v0
.end method

.method public addRepresentation(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addRepresentation(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public beginChanges()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 91
    return-void
.end method

.method public copyElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->copyElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    return-object v0
.end method

.method public deleteLibrary()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->deleteLibrary()Z

    move-result v0

    return v0
.end method

.method public discardChanges()Z
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->discardChanges()Z

    move-result v0

    return v0
.end method

.method public downloadRenditionFromExternalLink(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;ILandroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;",
            "I",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 440
    invoke-super/range {p0 .. p6}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->downloadRenditionFromExternalLink(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;ILandroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v0

    return v0
.end method

.method public endChanges()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    move-result v0

    return v0
.end method

.method public getCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCategories()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;
    .locals 1

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCategoryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    move-result-object v0

    return-object v0
.end method

.method public getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    return-object v0
.end method

.method public getElementNode(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 1

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementNode(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    return-object v0
.end method

.method public getFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public getPrimaryRepresentationForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 1

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getPrimaryRepresentationForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public getRepresentationsForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getRepresentationsForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsyncedChanges()Z
    .locals 1

    .prologue
    .line 411
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->hasUnsyncedChanges()Z

    move-result v0

    return v0
.end method

.method public insertElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;ILcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->insertElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;ILcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    return-object v0
.end method

.method public internalFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 449
    invoke-super/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->internalFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public internalGetRenditionPath(Ljava/lang/String;IZLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 431
    invoke-super/range {p0 .. p7}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->internalGetRenditionPath(Ljava/lang/String;IZLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public isCompositeValid()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingDelete()Z
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isPendingDelete()Z

    move-result v0

    return v0
.end method

.method public isSelfUnshared()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->_isUnShared:Z

    return v0
.end method

.method public lock()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 74
    return-void
.end method

.method public markSelfUnShare()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->_isUnShared:Z

    .line 398
    return-void
.end method

.method public moveElementAfter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->moveElementAfter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    return-object v0
.end method

.method public moveElementBefore(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->moveElementBefore(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    return-object v0
.end method

.method public refreshWithComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 453
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->refreshWithComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public removeCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->removeCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    move-result-object v0

    return-object v0
.end method

.method public removeElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->removeElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    return-object v0
.end method

.method protected removeRenditionCacheForElement(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->removeRenditionCacheForElement(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->removeRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->setName(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public shouldDownloadExternalAssetForRepresentation(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Z
    .locals 1

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->shouldDownloadExternalAssetForRepresentation(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 82
    return-void
.end method

.method public updateCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->updateCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    move-result-object v0

    return-object v0
.end method

.method public updateElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->updateElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    return-object v0
.end method

.method public updateRepresentation(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->updateRepresentation(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    return-object v0
.end method
