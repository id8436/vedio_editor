.class public Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
.super Ljava/lang/Object;
.source "AdobeLibraryComposite.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ADOBE_LIBRARY_MAX_ELEMENTS:I = 0x3e8

.field private static final ADOBE_LIBRARY_PLIST_FILE_NAME:Ljava/lang/String; = "library.plist"

.field private static final ADOBE_LIBRARY_RENDITION_CACHE_PREFIX:Ljava/lang/String; = "<cache>"

.field private static final ADOBE_LIBRARY_RENDITION_LIBRARY_PREFIX:Ljava/lang/String; = "<library>"


# instance fields
.field protected mCollaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

.field protected mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

.field mCreateDate:Ljava/util/Date;

.field protected mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field private mEditingOperationRefCount:I

.field protected mLastCommittedBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

.field private mLibraryId:Ljava/lang/String;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mModifiedDate:Ljava/util/Date;

.field private mRenditions:Lorg/json/JSONObject;

.field private mRenditionsURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->initWithComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->initWithName(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    .line 151
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->initWithPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    return-void
.end method

.method private callCompletionHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1697
    if-eqz p2, :cond_0

    .line 1698
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$3;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1714
    :goto_0
    return-void

    .line 1705
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$4;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$4;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1712
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private callCompletionHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1677
    if-eqz p2, :cond_0

    .line 1678
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1694
    :goto_0
    return-void

    .line 1685
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1692
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1717
    if-eqz p2, :cond_0

    .line 1718
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$5;

    invoke-direct {v0, p0, p1, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$5;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1734
    :goto_0
    return-void

    .line 1725
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$6;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1732
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private commit()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2696
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2718
    :goto_0
    return v0

    .line 2699
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->updateModified()V

    .line 2704
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move-object v1, v2

    .line 2708
    :goto_1
    if-nez v0, :cond_1

    .line 2709
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToSave:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 2712
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->libraryChanged(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 2716
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLastCommittedBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 2718
    const/4 v0, 0x1

    goto :goto_0

    .line 2705
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private createLibraryFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 158
    .line 159
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getRootLibrariesURL()Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponentAndLastPathComponentIsDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Failed to create library directory"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLocalLibraryCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v4, v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 170
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorStartupFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v4, v4, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 168
    :cond_1
    return-object v0
.end method

.method private createRenditionsFolder(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 176
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorStartupFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v3, v3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getRootRenditionsURL()Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_3

    .line 181
    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponentAndLastPathComponentIsDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Failed to create library renditions directory"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLocalLibraryCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-static {v0, v3, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 188
    :cond_2
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static createlibraryWithName(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    return-object v0
.end method

.method protected static createlibraryWithPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V

    return-object v0
.end method

.method protected static getElementsDCXNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 723
    if-nez p0, :cond_1

    move-object v0, v1

    .line 739
    :cond_0
    return-object v0

    .line 727
    :cond_1
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v0

    .line 729
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 730
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryNotInitialized:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 734
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 735
    if-eqz v0, :cond_3

    const-string/jumbo v2, "elements"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 736
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryNotInitialized:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0
.end method

.method static getElementsNodeOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2885
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method

.method protected static getElementsNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2896
    if-nez p0, :cond_1

    move-object v0, v1

    .line 2912
    :cond_0
    :goto_0
    return-object v0

    .line 2900
    :cond_1
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 2902
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    move-object v0, v1

    .line 2903
    goto :goto_0

    .line 2907
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 2908
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "elements"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move-object v0, v1

    .line 2909
    goto :goto_0
.end method

.method private getLibraryFolderURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getRootLibrariesURL()Ljava/lang/String;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_0

    .line 542
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponentAndLastPathComponentIsDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getRemovedElementsDCXNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 744
    if-nez p0, :cond_0

    move-object v0, v2

    .line 771
    :goto_0
    return-object v0

    .line 747
    :cond_0
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v3

    .line 749
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryNotInitialized:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v2, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 754
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 755
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 756
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "removed_elements"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v6, v0

    .line 762
    :goto_2
    if-nez v6, :cond_3

    .line 765
    :try_start_0
    const-string/jumbo v1, "removed_elements"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->appendNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 754
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Unable to create removed elements child"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v6

    goto :goto_0

    :cond_4
    move-object v6, v2

    goto :goto_2
.end method

.method private getRemovedElementsNode(Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1412
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1422
    :cond_0
    :goto_0
    return-object v0

    .line 1417
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getRemovedElementsDCXNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1418
    :catch_0
    move-exception v1

    .line 1419
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "archive node failure"

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private internalGetRenditionPathFromCache(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2524
    if-eqz p3, :cond_1

    const-string/jumbo v0, "full"

    .line 2525
    :goto_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementRenditions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2526
    if-eqz v2, :cond_5

    .line 2527
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2528
    if-eqz v0, :cond_5

    .line 2530
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 2550
    :cond_0
    :goto_1
    return-object v0

    .line 2524
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2533
    :cond_2
    const-string/jumbo v1, "<library>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2535
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryFolderURL()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<library>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2536
    :cond_3
    const-string/jumbo v1, "<cache>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2538
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    const-string/jumbo v2, "<cache>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2539
    :cond_4
    const-string/jumbo v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2544
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 2550
    goto :goto_1
.end method

.method private validateAndTrimName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 205
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 211
    :cond_1
    :goto_0
    return-object v0

    .line 209
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected addCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 3618
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    move-result-object v0

    return-object v0
.end method

.method protected addCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3545
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3548
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 3550
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCategoriesNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 3551
    if-nez v1, :cond_0

    .line 3552
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3553
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryNotInitialized:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3603
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3604
    throw v0

    .line 3559
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 3565
    if-eqz v1, :cond_6

    .line 3566
    :try_start_2
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    invoke-direct {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3571
    :goto_0
    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    .line 3574
    :try_start_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNodeOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 3578
    :goto_1
    if-nez v1, :cond_1

    .line 3579
    :try_start_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3603
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3606
    :goto_2
    return-object v0

    .line 3560
    :catch_0
    move-exception v0

    .line 3561
    :try_start_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3562
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddCategory:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3575
    :catch_1
    move-exception v1

    .line 3576
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_1

    .line 3582
    :cond_1
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 3583
    if-eqz v1, :cond_3

    .line 3584
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 3586
    const-string/jumbo v4, "library#category"

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 3587
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v4

    .line 3588
    if-eqz v4, :cond_5

    .line 3589
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "library#category"

    invoke-virtual {v4, v0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3591
    :try_start_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_6
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    :goto_4
    move-object v1, v0

    .line 3597
    goto :goto_3

    .line 3592
    :catch_2
    move-exception v0

    .line 3593
    :try_start_7
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddCategory:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v5, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    goto :goto_4

    :cond_2
    move-object v0, v1

    .line 3600
    :cond_3
    if-eqz v0, :cond_4

    .line 3601
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3603
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3605
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    move-object v0, v2

    .line 3606
    goto/16 :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v2, v0

    goto/16 :goto_0
.end method

.method protected addElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2923
    new-instance v7, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v0, "createElement"

    invoke-direct {v7, v0, p0, p1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 2925
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppCreate:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;-><init>(Ljava/lang/String;)V

    .line 2926
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "libray_element"

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 2929
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 2931
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNodeOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 2932
    if-nez v1, :cond_0

    .line 2933
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 2934
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 2936
    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 2938
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorInvalidLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v6, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 2939
    invoke-virtual {v7, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 2940
    throw v0

    .line 2944
    :cond_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v2

    .line 2946
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_1

    .line 2947
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 2948
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 2949
    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 2951
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryMaximumElementsReached:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v6, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 2952
    invoke-virtual {v7, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 2953
    throw v0

    .line 2959
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 2960
    if-eqz v2, :cond_2

    .line 2961
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 2964
    :goto_0
    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2973
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 2974
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 2975
    invoke-virtual {v7, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 2976
    return-object v1

    .line 2965
    :catch_0
    move-exception v0

    .line 2966
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 2967
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 2968
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 2969
    invoke-virtual {v7, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 2970
    throw v0

    :cond_2
    move-object v1, v6

    goto :goto_0
.end method

.method protected addElement(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1152
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v8

    .line 1210
    :goto_0
    return-object v0

    .line 1156
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v1

    .line 1160
    new-instance v9, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;

    const-string/jumbo v0, "createElement"

    invoke-direct {v9, v0, p0, v8, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 1163
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppCreate:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;-><init>(Ljava/lang/String;)V

    .line 1164
    const-string/jumbo v3, ""

    const-string/jumbo v4, "libray_element"

    const-string/jumbo v5, ""

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 1167
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 1169
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v7

    .line 1170
    if-nez v7, :cond_1

    .line 1171
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1172
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1173
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorInvalidLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v8, v8, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v1

    .line 1174
    invoke-virtual {v9, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1175
    const-string/jumbo v2, "failure"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 1176
    throw v1

    .line 1180
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v2

    .line 1181
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_2

    .line 1182
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1183
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1184
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryMaximumElementsReached:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v8, v8, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v1

    .line 1185
    invoke-virtual {v9, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1186
    const-string/jumbo v2, "failure"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 1187
    throw v1

    .line 1195
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->appendNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    move-object v1, v8

    .line 1199
    :goto_1
    if-eqz v2, :cond_3

    .line 1201
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1202
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "library#created"

    invoke-virtual {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v3, "library#modified"

    invoke-virtual {v2, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1205
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v1, v2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 1206
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1207
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1208
    invoke-virtual {v9, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1209
    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    move-object v0, v1

    .line 1210
    goto/16 :goto_0

    .line 1196
    :catch_0
    move-exception v1

    move-object v2, v8

    .line 1197
    goto :goto_1

    .line 1213
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1214
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1215
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v2, v1, v8, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v1

    .line 1216
    invoke-virtual {v9, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1217
    const-string/jumbo v2, "failure"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 1218
    throw v1
.end method

.method public addElementWithDCXElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1082
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    :goto_0
    return-object v0

    .line 1087
    :cond_0
    if-nez p1, :cond_1

    .line 1088
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 1090
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getRoot()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    .line 1093
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "library#created"

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "library#modified"

    .line 1094
    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1095
    :cond_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorInvalidElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 1099
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v8, v0

    .line 1103
    :goto_1
    if-nez v3, :cond_4

    .line 1104
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorInvalidLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v8, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 1100
    :catch_0
    move-exception v8

    move-object v3, v0

    .line 1101
    goto :goto_1

    .line 1106
    :cond_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 1109
    const/16 v1, 0x3e8

    if-lt v4, v1, :cond_5

    .line 1110
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryMaximumElementsReached:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 1114
    :cond_5
    new-instance v9, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;

    const-string/jumbo v1, "createElement"

    invoke-direct {v9, v1, p0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 1118
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 1122
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v6

    .line 1123
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1125
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v6

    .line 1131
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    int-to-long v4, v4

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->copyNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;JLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v2, v1

    move-object v1, v8

    .line 1136
    :goto_2
    if-nez v2, :cond_7

    .line 1137
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1138
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1139
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementCopyFailed:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v2, v1, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1140
    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1141
    throw v0

    .line 1132
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 1133
    goto :goto_2

    .line 1144
    :cond_7
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v1, v2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 1145
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1146
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1147
    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    move-object v0, v1

    .line 1148
    goto/16 :goto_0
.end method

.method public addErrorIfReadOnly()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3748
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3749
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorNoWriteAccess:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3752
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected addRepresentation(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3268
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppCreate:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;-><init>(Ljava/lang/String;)V

    .line 3269
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getRepresentationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "libray_element_representation"

    .line 3270
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 3269
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3273
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3274
    :cond_0
    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3275
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v7, v7, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3279
    :cond_1
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getRepresentationsForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3280
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "primary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3281
    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3282
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementMustHaveOnePrimaryRepresentation:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v7, v7, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3286
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "primary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3287
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 3288
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "primary"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3289
    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3290
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementMustHaveOnePrimaryRepresentation:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v7, v7, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3295
    :cond_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 3296
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 3299
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3303
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3311
    if-eqz v2, :cond_7

    .line 3312
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    .line 3313
    invoke-virtual {p0, v1, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->elementRepresentationsChanged(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)V

    .line 3314
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 3323
    :goto_0
    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3327
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    iget-object v4, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->mFilePath:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->mSourceHref:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 3336
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    .line 3338
    invoke-virtual {p0, v1, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->elementRepresentationsChanged(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)V

    .line 3339
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 3342
    :cond_6
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3343
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3344
    if-nez v1, :cond_9

    .line 3345
    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3346
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddRepresentation:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->mFilePath:Ljava/lang/String;

    invoke-static {v0, v7, v1, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3304
    :catch_0
    move-exception v1

    .line 3305
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3306
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3307
    const-string/jumbo v2, "failure"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3308
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddRepresentation:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v7, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3316
    :cond_7
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3317
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3318
    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3319
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddRepresentation:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v7, v7, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3328
    :catch_1
    move-exception v1

    .line 3329
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3330
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3331
    const-string/jumbo v2, "failure"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3332
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddRepresentation:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->mFilePath:Ljava/lang/String;

    :goto_1
    invoke-static {v2, v1, v0, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    :cond_8
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->mSourceHref:Ljava/lang/String;

    goto :goto_1

    .line 3349
    :cond_9
    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3351
    return-object v1

    :cond_a
    move-object v1, v7

    goto/16 :goto_0
.end method

.method public archiveElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1369
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1407
    :goto_0
    return-object v0

    .line 1373
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 1374
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 1377
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementNode(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 1379
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getRemovedElementsNode(Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    .line 1380
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v3

    .line 1382
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1387
    :try_start_0
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    int-to-long v6, v3

    invoke-virtual {v4, v1, v2, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->moveNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1393
    :goto_1
    if-nez v2, :cond_1

    .line 1394
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1395
    throw v0

    .line 1389
    :catch_0
    move-exception v1

    .line 1390
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "archive node failure"

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    .line 1399
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeUnusedLocalFiles()J

    .line 1401
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1402
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1404
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 1405
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->updateTimestampOnRemove()V

    move-object v0, v1

    .line 1407
    goto :goto_0
.end method

.method protected beginChanges()V
    .locals 1

    .prologue
    .line 2726
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mEditingOperationRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mEditingOperationRefCount:I

    .line 2727
    return-void
.end method

.method checkAndAddMatch(Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 926
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    if-eqz p3, :cond_2

    .line 930
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    :cond_0
    :goto_0
    return v0

    .line 934
    :cond_1
    if-eqz p3, :cond_0

    .line 937
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected copyElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1582
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1664
    :goto_0
    return-object v0

    .line 1585
    :cond_0
    new-instance v8, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v1, "copyElement"

    invoke-direct {v8, v1, p0, p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 1590
    if-nez p2, :cond_1

    move-object p2, p0

    .line 1594
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1595
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1596
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorInvalidLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1597
    invoke-virtual {v8, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1598
    throw v0

    .line 1601
    :cond_3
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 1604
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1605
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1606
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1607
    invoke-virtual {v8, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1608
    throw v0

    .line 1613
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1621
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1624
    const/16 v2, 0x3e8

    if-lt v4, v2, :cond_6

    .line 1625
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1626
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryMaximumElementsReached:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1627
    invoke-virtual {v8, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1628
    throw v0

    .line 1614
    :catch_0
    move-exception v1

    .line 1615
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1616
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorInvalidLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v2, v1, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1617
    invoke-virtual {v8, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1618
    throw v0

    .line 1631
    :cond_6
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 1635
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v6

    .line 1636
    if-eq p2, p0, :cond_7

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1638
    :cond_7
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v6

    .line 1642
    :cond_8
    instance-of v2, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    if-eqz v2, :cond_9

    .line 1643
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    .line 1651
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    int-to-long v4, v4

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->copyNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;JLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1660
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v1, v2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 1661
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1662
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1663
    invoke-virtual {v8, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    move-object v0, v1

    .line 1664
    goto/16 :goto_0

    .line 1645
    :cond_9
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    goto :goto_1

    .line 1652
    :catch_1
    move-exception v1

    .line 1653
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1654
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1655
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementCopyFailed:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v2, v1, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1656
    invoke-virtual {v8, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1657
    throw v0
.end method

.method public created()D
    .locals 4

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "library#created"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2768
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Library created time cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2770
    :cond_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 2771
    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected deleteLibrary()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 655
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 656
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->markCompositeForDeletion()V

    .line 662
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->deleteRenditionsFolder(Ljava/lang/String;)Z

    .line 678
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 679
    const/4 v0, 0x1

    return v0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeLibraryComposite.deleteLibrary"

    const-string/jumbo v3, "library deletion failed"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 669
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalStorage()Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 673
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    goto :goto_0

    .line 670
    :catch_1
    move-exception v0

    .line 671
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLocalLibraryDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getClientDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0
.end method

.method deleteRenditionsFolder(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getRootRenditionsURL()Ljava/lang/String;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponentAndLastPathComponentIsDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected discardChanges()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2752
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2753
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->updateCurrentBranchWithManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Z)V

    .line 2754
    iput v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mEditingOperationRefCount:I

    .line 2755
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2757
    const/4 v0, 0x1

    return v0
.end method

.method protected downloadRenditionFromExternalLink(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;ILandroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z
    .locals 20
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
    .line 2115
    invoke-virtual/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "primary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 2116
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getContentURLForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Ljava/net/URI;

    move-result-object v4

    .line 2118
    if-eqz v4, :cond_3

    .line 2119
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p3

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->getRenditionQueryParamsForEndpoint(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2120
    if-eqz v2, :cond_3

    .line 2123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v2, "&"

    move-object v3, v2

    .line 2125
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    const-string/jumbo v5, "library#linktype"

    invoke-virtual {v2, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2129
    :try_start_0
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->validateURL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2131
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    .line 2133
    if-nez v6, :cond_0

    .line 2134
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 2136
    :cond_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2137
    invoke-static {v3, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2138
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileExtensions;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2139
    if-eqz v6, :cond_1

    .line 2140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2144
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;

    move-result-object v18

    .line 2145
    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v19

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$10;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$10;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Ljava/lang/String;)V

    new-instance v10, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;

    move-object/from16 v11, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p4

    move-object/from16 v17, v5

    invoke-direct/range {v10 .. v17}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$11;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;ZLcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9, v2, v10}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->downloadExternalFile(Ljava/net/URL;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2212
    if-eqz v2, :cond_3

    .line 2213
    const/4 v2, 0x1

    .line 2222
    :goto_1
    return v2

    .line 2123
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_0

    .line 2216
    :catch_0
    move-exception v2

    .line 2217
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2222
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method elementRepresentationsChanged(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2804
    if-nez p1, :cond_0

    .line 2805
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getMutableElementOfRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;

    move-result-object p1

    .line 2808
    :cond_0
    if-eqz p1, :cond_1

    .line 2809
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->updateModified()V

    .line 2812
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2818
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->removeRenditionCacheForElement(Ljava/lang/String;)Z

    .line 2820
    :cond_1
    return-void

    .line 2813
    :catch_0
    move-exception v0

    .line 2814
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected endChanges()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2735
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mEditingOperationRefCount:I

    if-lez v0, :cond_1

    .line 2736
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mEditingOperationRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mEditingOperationRefCount:I

    if-nez v0, :cond_0

    .line 2737
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->commit()Z

    .line 2742
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2740
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryEndWithoutBegin:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0
.end method

.method public getAllArchivedLibraryElements()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 969
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getRemovedElementsDCXNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    .line 973
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v0

    .line 974
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 975
    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v3, v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 976
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 978
    :catch_0
    move-exception v0

    .line 979
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;->printStackTrace()V

    .line 981
    :cond_0
    return-object v1
.end method

.method public getAllElements()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElements(ZLcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllElementsWithFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsWithFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getCategories()Ljava/util/ArrayList;
    .locals 4
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
    const/4 v0, 0x0

    .line 3491
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3494
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCategoriesNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3495
    if-nez v1, :cond_0

    .line 3508
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3510
    :goto_0
    return-object v0

    .line 3499
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v2

    .line 3500
    if-eqz v2, :cond_2

    .line 3501
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3502
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 3503
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    invoke-direct {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 3504
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3508
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3509
    throw v0

    :cond_1
    move-object v0, v1

    .line 3508
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method getCategoriesNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3465
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 3482
    :cond_0
    :goto_0
    return-object v0

    .line 3469
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 3470
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 3472
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    move-object v0, v1

    .line 3473
    goto :goto_0

    .line 3477
    :cond_2
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 3478
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "categories"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move-object v0, v1

    .line 3479
    goto :goto_0
.end method

.method protected getCategoryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3520
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3522
    if-nez p1, :cond_0

    .line 3531
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3533
    :goto_0
    return-object v0

    .line 3526
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 3527
    if-eqz v1, :cond_1

    .line 3528
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3531
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3532
    throw v0
.end method

.method public getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCollaborationType()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_PRIVATE:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    goto :goto_0
.end method

.method public getCollaborationRole()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCollaborationRoleType()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    move-result-object v0

    return-object v0
.end method

.method getContentURLForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Ljava/net/URI;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2854
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isExternalLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2855
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v1, "library#linkurl"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 2874
    :goto_0
    return-object v0

    .line 2857
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->resourceForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v2

    .line 2858
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->serviceSession()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    .line 2859
    :goto_1
    if-eqz v0, :cond_2

    .line 2860
    const-string/jumbo v3, "libraries"

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->getServiceForSchemaId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v3

    .line 2862
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 2865
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->baseURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getRelativeTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2866
    :catch_0
    move-exception v0

    .line 2867
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2858
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2874
    goto :goto_0
.end method

.method public getCountOfAllElements()I
    .locals 1

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getAllElements()Ljava/util/ArrayList;

    move-result-object v0

    .line 844
    if-nez v0, :cond_0

    .line 845
    const/4 v0, 0x0

    .line 848
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCountOfElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)I
    .locals 1

    .prologue
    .line 826
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 828
    if-nez v0, :cond_0

    .line 829
    const/4 v0, 0x0

    .line 832
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getDCXNodeForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 2

    .prologue
    .line 1670
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    if-eqz v0, :cond_0

    .line 1671
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    .line 1673
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRepresentationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    return-object v0
.end method

.method protected getElementNode(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 2

    .prologue
    .line 784
    const/4 v0, 0x0

    .line 785
    if-eqz p1, :cond_0

    .line 786
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    .line 792
    :cond_0
    :goto_0
    return-object v0

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    goto :goto_0
.end method

.method protected getElementReference(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1059
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 1060
    if-eqz v1, :cond_0

    .line 1061
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 1063
    if-eqz v0, :cond_0

    .line 1064
    const-string/jumbo v2, "adobe-libraries"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getHrefForSyncGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1066
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getEndpoints()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;

    .line 1068
    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudEndpoint;->getServiceURLs()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "libraries"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 1071
    if-eqz v0, :cond_0

    .line 1072
    const-string/jumbo v1, "cloud-asset://%s/%s%s;node=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    aput-object v2, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1078
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getElementRenditions(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2091
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditions:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2092
    if-nez v0, :cond_0

    .line 2093
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2095
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditions:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2101
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2103
    return-object v0

    .line 2096
    :catch_0
    move-exception v1

    .line 2097
    :try_start_2
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2102
    throw v0
.end method

.method public getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 907
    if-nez p1, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-object v0

    .line 910
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 914
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 915
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isTypeInElementTypesFilter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 916
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    goto :goto_0
.end method

.method public getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElements(ZLcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getElements(ZLcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 873
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 876
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 878
    if-nez v1, :cond_0

    .line 897
    :goto_0
    return-object v0

    .line 881
    :cond_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v2

    .line 883
    if-eqz v2, :cond_3

    .line 884
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_1

    .line 885
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 886
    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v3, v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 888
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isTypeInDelegateElementTypesFilter(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 892
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 893
    :goto_2
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeLibraryComposite:getElements"

    const-string/jumbo v4, "fetch failed"

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 896
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    goto :goto_0

    .line 892
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method protected getElementsNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    if-nez v0, :cond_1

    .line 777
    :cond_0
    const/4 v0, 0x0

    .line 780
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsDCXNodeOfCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    goto :goto_0
.end method

.method public getElementsWithFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 951
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsWithFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getElementsWithFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 985
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 988
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 993
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 995
    if-nez v0, :cond_1

    .line 996
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1055
    :cond_0
    return-object v5

    .line 989
    :catch_0
    move-exception v1

    .line 990
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1000
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v0

    .line 1001
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1003
    if-eqz v0, :cond_0

    .line 1004
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 1005
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v4, v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 1007
    if-eqz p3, :cond_3

    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isTypeInDelegateElementTypesFilter(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1012
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1013
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->isMatchAny()Z

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->checkAndAddMatch(Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1022
    :cond_4
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->isMatchAny()Z

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->checkAndAddMatch(Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1025
    :cond_5
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->getContentTypes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1026
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getRepresentations()Ljava/util/List;

    move-result-object v0

    .line 1027
    const/4 v1, 0x0

    .line 1028
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 1029
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->getContentTypes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1030
    const/4 v0, 0x1

    .line 1035
    :goto_2
    if-eqz v0, :cond_8

    .line 1036
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->isMatchAny()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1037
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1015
    :cond_7
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/vnd.adobe.element.characterstyle+dcx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1016
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->isMatchAny()Z

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->checkAndAddMatch(Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 1041
    :cond_8
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->isMatchAny()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1048
    :cond_9
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->isMatchAny()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1050
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method public getFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Z
    .locals 6
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
    .line 1748
    .line 1750
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1751
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->internalFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1753
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1756
    return v0

    .line 1753
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1754
    throw v0
.end method

.method public getFirstRepresentationOfType(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3177
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 3179
    const/4 v1, 0x0

    .line 3180
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 3181
    if-eqz v2, :cond_4

    .line 3183
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 3184
    if-eqz v0, :cond_1

    .line 3185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 3186
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 3187
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3188
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 3194
    :cond_1
    if-nez v1, :cond_3

    .line 3195
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 3196
    if-eqz v0, :cond_3

    .line 3197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 3198
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v3

    .line 3199
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3200
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    move-object v0, v1

    .line 3208
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3209
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public getLibraryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3743
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    return-object v0
.end method

.method protected getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public getModified()D
    .locals 4

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "library#modified"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2782
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Library modified time cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2784
    :cond_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 2785
    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method getMutableElementOfRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2829
    .line 2831
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2832
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;-><init>()V

    .line 2833
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 2836
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2837
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 2840
    :cond_0
    if-eqz v0, :cond_1

    .line 2841
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    .line 2844
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 391
    const/4 v0, 0x0

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 395
    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 402
    return-object v0

    .line 400
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 401
    throw v0
.end method

.method public getPrimaryRepresentationForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3220
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 3221
    const/4 v1, 0x0

    .line 3223
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    .line 3224
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 3225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 3226
    if-eqz v0, :cond_4

    .line 3227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 3228
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v4

    .line 3229
    if-eqz v4, :cond_0

    const-string/jumbo v5, "primary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3230
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    move-object v2, v1

    .line 3236
    :goto_0
    if-nez v2, :cond_3

    .line 3237
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 3238
    if-eqz v0, :cond_3

    .line 3239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 3240
    const-string/jumbo v1, "library#rel"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3241
    if-nez v1, :cond_2

    .line 3244
    const-string/jumbo v1, "relationship"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3246
    :cond_2
    if-eqz v1, :cond_1

    const-string/jumbo v4, "primary"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3247
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    move-object v0, v1

    .line 3255
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3256
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public getRenditionPath(Ljava/lang/String;IZLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Z
    .locals 8
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
            ")Z"
        }
    .end annotation

    .prologue
    .line 2083
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->internalGetRenditionPath(Ljava/lang/String;IZLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public getRenditionPathFromCache(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2513
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    .line 2515
    if-nez v0, :cond_0

    .line 2516
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 2519
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->internalGetRenditionPathFromCache(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepresentationWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3149
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 3151
    const/4 v0, 0x0

    .line 3153
    if-eqz p1, :cond_0

    .line 3154
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 3155
    if-eqz v1, :cond_1

    .line 3156
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 3165
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3166
    return-object v0

    .line 3158
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 3159
    if-eqz v1, :cond_0

    .line 3160
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    goto :goto_0
.end method

.method public getRepresentationsForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/util/ArrayList;
    .locals 5
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3101
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 3103
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 3104
    if-nez v2, :cond_0

    move-object v0, v1

    .line 3138
    :goto_0
    return-object v0

    .line 3107
    :cond_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 3108
    goto :goto_0

    .line 3111
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v3

    .line 3112
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v4

    .line 3114
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    .line 3115
    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 3117
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3119
    if-eqz v3, :cond_5

    .line 3120
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 3121
    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 3122
    if-eqz v3, :cond_3

    .line 3123
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v2, v0

    .line 3114
    goto :goto_1

    .line 3128
    :cond_5
    if-eqz v4, :cond_7

    .line 3129
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 3130
    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 3131
    if-eqz v3, :cond_6

    .line 3132
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3137
    :cond_7
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v1

    .line 3138
    goto :goto_0
.end method

.method getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2461
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2462
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 2463
    int-to-float v0, p2

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 2464
    int-to-float v2, p3

    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 2466
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2468
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 2471
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2473
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2474
    return-object v0
.end method

.method public getTotalElementCount()I
    .locals 5

    .prologue
    .line 801
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 802
    const/4 v0, 0x0

    .line 804
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 805
    if-eqz v1, :cond_0

    .line 806
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v1

    .line 807
    if-eqz v1, :cond_0

    .line 808
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 817
    :goto_0
    return v0

    .line 811
    :catch_0
    move-exception v1

    .line 812
    :try_start_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeLibraryComposite.getTotalElementCount"

    const-string/jumbo v4, "count fetching failed"

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 815
    throw v0
.end method

.method public getVersion()I
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 486
    const/4 v1, 0x0

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_0

    .line 491
    const-string/jumbo v2, "library#version"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    .line 493
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 498
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 500
    return v0

    .line 498
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 499
    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected hasUnsyncedChanges()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 509
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unmodified"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 518
    return v0

    .line 516
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 517
    throw v0
.end method

.method public haveLocalFileForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Z
    .locals 1

    .prologue
    .line 1959
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->localFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initWithComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 326
    if-nez p1, :cond_0

    .line 327
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 329
    :cond_0
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 330
    iput v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mEditingOperationRefCount:I

    .line 331
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 332
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 333
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setInitializeMetadataFromManifest(Z)V

    .line 334
    if-eqz p3, :cond_2

    :goto_0
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    .line 335
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditions:Lorg/json/JSONObject;

    .line 337
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLastCommittedBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->createRenditionsFolder(Ljava/lang/String;)Z

    .line 345
    return-void

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method initWithName(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->validateAndTrimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 227
    :cond_0
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 228
    const/4 v1, 0x0

    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mEditingOperationRefCount:I

    .line 229
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 231
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-direct {p0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->createLibraryFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    const/4 v6, 0x0

    .line 235
    :try_start_0
    const-string/jumbo v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string/jumbo v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 236
    :cond_1
    const-string/jumbo v1, "application/vnd.adobe.library+dcx"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createCompositeWithName(Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v6

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-nez v1, :cond_2

    .line 243
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setInitializeMetadataFromManifest(Z)V

    .line 246
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    .line 250
    const/4 v1, 0x0

    .line 252
    :try_start_1
    const-string/jumbo v5, "elements"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->insertNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 256
    :goto_1
    if-nez v0, :cond_3

    .line 257
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 253
    :catch_0
    move-exception v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 254
    goto :goto_1

    .line 261
    :cond_3
    :try_start_2
    const-string/jumbo v5, "categories"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x1

    invoke-virtual/range {v4 .. v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->insertNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 266
    :goto_2
    if-nez v0, :cond_4

    .line 267
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 262
    :catch_1
    move-exception v0

    .line 264
    const/4 v1, 0x0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_2

    .line 270
    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "library#version"

    invoke-virtual {v4, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->getCurrentTimeInMilliseconds()J

    move-result-wide v0

    .line 274
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v5, "library#created"

    invoke-virtual {v4, v2, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "library#modified"

    invoke-virtual {v4, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLastCommittedBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 281
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->commit()Z

    .line 282
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditions:Lorg/json/JSONObject;

    .line 285
    invoke-direct {p0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->createRenditionsFolder(Ljava/lang/String;)Z

    .line 286
    return-void

    .line 238
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method initWithPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 296
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 297
    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mEditingOperationRefCount:I

    .line 298
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 301
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->compositeStoredAt(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setInitializeMetadataFromManifest(Z)V

    .line 308
    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->createRenditionsFolder(Ljava/lang/String;)Z

    .line 316
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->readLibraryPlist()V

    .line 317
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method protected insertElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;ILcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2988
    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2989
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v0

    .line 2990
    :goto_0
    if-le p2, v7, :cond_1

    .line 2991
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryIndexOutOfRange:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v6, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 2989
    :cond_0
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 2994
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 2995
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 2996
    new-instance v9, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v0, "createLibrary"

    invoke-direct {v9, v0, p0, p1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 2998
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppCreate:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;-><init>(Ljava/lang/String;)V

    .line 2999
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "libray_element"

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNodeOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v4

    .line 3002
    if-nez v4, :cond_2

    .line 3003
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3004
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3005
    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3006
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorInvalidLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v6, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 3007
    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3008
    throw v0

    .line 3012
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 3013
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_3

    .line 3014
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3015
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3016
    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3017
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryMaximumElementsReached:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v6, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 3018
    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3019
    throw v0

    .line 3022
    :cond_3
    const-wide/16 v2, 0x0

    .line 3024
    if-ne p2, v7, :cond_5

    .line 3025
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    .line 3035
    :cond_4
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v5

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->insertChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 3036
    if-eqz v2, :cond_6

    .line 3037
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3038
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3039
    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3040
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3041
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 3055
    :goto_2
    return-object v0

    .line 3027
    :cond_5
    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 3028
    if-eqz v1, :cond_4

    .line 3029
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;-><init>()V

    .line 3030
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 3031
    iget-wide v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    goto :goto_1

    .line 3043
    :catch_0
    move-exception v1

    .line 3044
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3045
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3046
    const-string/jumbo v2, "failure"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3047
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 3048
    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3049
    throw v0

    .line 3052
    :cond_6
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3053
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3054
    invoke-virtual {v9, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    move-object v0, v6

    .line 3055
    goto :goto_2
.end method

.method protected insertElement(Ljava/lang/String;Ljava/lang/String;ILcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1223
    const/4 v2, 0x0

    .line 1305
    :goto_0
    return-object v2

    .line 1225
    :cond_0
    const/4 v8, 0x0

    .line 1227
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1228
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v10, v2

    .line 1229
    :goto_1
    move/from16 v0, p3

    if-le v0, v10, :cond_2

    .line 1230
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryIndexOutOfRange:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v2

    throw v2

    .line 1228
    :cond_1
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1

    .line 1234
    :cond_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v3

    .line 1238
    new-instance v14, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;

    const-string/jumbo v2, "createElement"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v14, v2, p0, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 1241
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppCreate:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;-><init>(Ljava/lang/String;)V

    .line 1242
    const-string/jumbo v5, ""

    const-string/jumbo v6, "libray_element"

    const-string/jumbo v7, ""

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 1246
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 1248
    const/4 v9, 0x0

    .line 1250
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    move-object v4, v8

    .line 1254
    :goto_2
    if-nez v9, :cond_3

    .line 1255
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1256
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1257
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorInvalidLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v3

    .line 1258
    invoke-virtual {v14, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1259
    const-string/jumbo v4, "failure"

    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 1260
    throw v3

    .line 1264
    :cond_3
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v4

    .line 1265
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x3e8

    if-lt v5, v6, :cond_4

    .line 1266
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1267
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1268
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryMaximumElementsReached:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v3

    .line 1269
    invoke-virtual {v14, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1270
    const-string/jumbo v4, "failure"

    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 1271
    throw v3

    .line 1274
    :cond_4
    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;-><init>()V

    .line 1275
    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    .line 1276
    move/from16 v0, p3

    if-ne v0, v10, :cond_6

    .line 1277
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v6, v4

    iput-wide v6, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    .line 1287
    :cond_5
    :goto_3
    const/4 v13, 0x0

    .line 1288
    const/4 v12, 0x0

    .line 1290
    :try_start_1
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    iget-wide v10, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v7, p2

    move-object v8, v3

    invoke-virtual/range {v4 .. v11}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->insertNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    move-object v4, v3

    move-object v3, v13

    .line 1294
    :goto_4
    if-eqz v4, :cond_8

    .line 1296
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->getCurrentTimeInMilliseconds()J

    move-result-wide v6

    .line 1297
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v5, "library#created"

    invoke-virtual {v4, v3, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1298
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v5, "library#modified"

    invoke-virtual {v4, v3, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1300
    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v3, v4, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 1301
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1302
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1303
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1304
    const-string/jumbo v4, "success"

    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    move-object v2, v3

    .line 1305
    goto/16 :goto_0

    .line 1279
    :cond_6
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 1280
    sget-boolean v6, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->$assertionsDisabled:Z

    if-nez v6, :cond_7

    if-nez v4, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "ERROR: insertElement: Can\'t find element to insert before."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1281
    :cond_7
    if-eqz v4, :cond_5

    .line 1282
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v6

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    goto :goto_3

    .line 1291
    :catch_0
    move-exception v3

    move-object v4, v12

    .line 1292
    goto :goto_4

    .line 1308
    :cond_8
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1309
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1310
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v3, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v3

    .line 1311
    invoke-virtual {v14, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsError;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1312
    const-string/jumbo v4, "failure"

    invoke-virtual {v2, v4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 1313
    throw v3

    .line 1251
    :catch_1
    move-exception v4

    goto/16 :goto_2
.end method

.method protected internalFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/util/ArrayList;)Z
    .locals 18
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
    .line 1762
    if-nez p1, :cond_0

    .line 1763
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    sget-object v5, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const-string/jumbo v6, "Missing Representation"

    invoke-direct {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/String;)V

    .line 1764
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 1765
    const/4 v4, 0x0

    .line 1946
    :goto_0
    return v4

    .line 1770
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v4

    .line 1771
    if-eqz v4, :cond_7

    .line 1772
    const/4 v5, 0x0

    .line 1774
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1778
    :goto_1
    if-eqz v4, :cond_2

    .line 1779
    if-eqz p2, :cond_1

    .line 1780
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1821
    :cond_1
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 1775
    :catch_0
    move-exception v4

    .line 1776
    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v7, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    goto :goto_1

    .line 1783
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentNodeOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v5

    .line 1784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    .line 1785
    :goto_3
    if-eqz v4, :cond_5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v6

    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    new-instance v9, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->downloadRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v4

    .line 1813
    :goto_5
    if-nez v4, :cond_6

    .line 1814
    const/4 v4, 0x0

    goto :goto_0

    .line 1784
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 1785
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 1816
    :cond_6
    if-eqz p5, :cond_1

    .line 1817
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1822
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isExternalLink()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1825
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    if-eqz v4, :cond_9

    .line 1826
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v4

    .line 1830
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v4

    .line 1831
    if-eqz v4, :cond_b

    .line 1832
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v6

    .line 1833
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRepresentationId()Ljava/lang/String;

    move-result-object v7

    .line 1834
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementRenditions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1837
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v9, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1838
    if-eqz v4, :cond_c

    .line 1839
    const-string/jumbo v5, "ERROR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1840
    if-eqz p3, :cond_8

    .line 1841
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    sget-object v5, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorDownloadingRepresentationAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-direct {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1842
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1828
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRepresentationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v4

    goto :goto_6

    .line 1843
    :cond_a
    if-eqz p2, :cond_b

    .line 1845
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1940
    :cond_b
    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1851
    :cond_c
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isSyncEnabled()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1853
    if-eqz p3, :cond_d

    .line 1854
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    sget-object v5, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorSyncNotEnabled:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-direct {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 1855
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1858
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v4

    const-string/jumbo v5, "library#linktype"

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1859
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v5

    const-string/jumbo v8, "library#linkurl"

    invoke-virtual {v5, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1863
    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->validateURL(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1865
    const-string/jumbo v4, "ERROR"

    .line 1866
    invoke-virtual {v9, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1869
    if-eqz p3, :cond_f

    .line 1870
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    sget-object v5, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorDownloadingRepresentationAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-direct {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 1871
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1875
    :cond_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1876
    invoke-static {v8, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1878
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1879
    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileExtensions;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1880
    if-eqz v4, :cond_11

    .line 1881
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1886
    :cond_11
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;

    move-result-object v16

    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;

    move-object/from16 v5, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$8;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    new-instance v10, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;

    move-object/from16 v11, p0

    move-object v12, v9

    move-object v13, v7

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8, v4, v10}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->downloadExternalFile(Ljava/net/URL;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v4

    .line 1926
    if-nez v4, :cond_12

    .line 1927
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1929
    :cond_12
    if-eqz p5, :cond_b

    .line 1930
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    .line 1934
    :catch_1
    move-exception v4

    .line 1935
    :goto_8
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v6, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1942
    :cond_13
    if-eqz p3, :cond_14

    .line 1943
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorRepresentationHasNoFile:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v4

    .line 1944
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 1946
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1934
    :catch_2
    move-exception v4

    goto :goto_8
.end method

.method protected internalGetRenditionPath(Ljava/lang/String;IZLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/util/ArrayList;)Z
    .locals 20
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
    .line 2229
    invoke-virtual/range {p0 .. p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v8

    .line 2231
    if-nez v8, :cond_1

    .line 2232
    if-eqz p5, :cond_0

    .line 2233
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v3

    .line 2234
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 2236
    :cond_0
    const/4 v3, 0x0

    .line 2457
    :goto_0
    return v3

    .line 2239
    :cond_1
    const/4 v3, 0x1

    .line 2242
    invoke-direct/range {p0 .. p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->internalGetRenditionPathFromCache(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    .line 2243
    if-eqz v4, :cond_25

    .line 2244
    const-string/jumbo v3, "ERROR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2246
    const/4 v3, 0x0

    move v14, v3

    .line 2256
    :goto_1
    if-eqz p3, :cond_7

    const-string/jumbo v6, "full"

    .line 2257
    :goto_2
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getRepresentations()Ljava/util/List;

    move-result-object v5

    .line 2258
    const/4 v10, 0x0

    .line 2259
    const/4 v7, 0x0

    .line 2260
    const/4 v4, 0x0

    .line 2261
    const/4 v3, 0x0

    .line 2263
    if-eqz v5, :cond_24

    .line 2264
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v11, v3

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 2265
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v12

    .line 2266
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v16

    .line 2267
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getWidth()I

    move-result v5

    .line 2268
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getHeight()I

    move-result v3

    .line 2269
    if-le v5, v3, :cond_8

    .line 2270
    :goto_4
    if-eqz v12, :cond_9

    const-string/jumbo v3, "rendition"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    move v13, v3

    .line 2271
    :goto_5
    if-eqz v12, :cond_a

    const-string/jumbo v3, "primary"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    .line 2272
    :goto_6
    if-eqz v3, :cond_2

    .line 2273
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isExternalLink()Z

    move-result v11

    if-eqz v11, :cond_b

    if-eqz v16, :cond_b

    const-string/jumbo v11, "image/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    .line 2275
    :cond_2
    :goto_7
    if-eqz v13, :cond_c

    if-eqz p3, :cond_3

    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isFullSize()Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    if-nez p3, :cond_c

    if-eqz p2, :cond_c

    move/from16 v0, p2

    if-ne v5, v0, :cond_c

    .line 2276
    :cond_4
    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$12;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$12;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    new-instance v7, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v7, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$13;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object v5, v9

    move-object v6, v3

    move-object/from16 v9, p7

    invoke-virtual/range {v4 .. v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->internalFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/util/ArrayList;)Z

    .line 2300
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2248
    :cond_5
    if-eqz p4, :cond_6

    .line 2249
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Ljava/lang/String;)V

    .line 2251
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2256
    :cond_7
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_8
    move v5, v3

    .line 2269
    goto :goto_4

    .line 2270
    :cond_9
    const/4 v3, 0x0

    move v13, v3

    goto :goto_5

    .line 2271
    :cond_a
    const/4 v3, 0x0

    goto :goto_6

    .line 2273
    :cond_b
    const/4 v11, 0x0

    goto :goto_7

    .line 2304
    :cond_c
    if-eqz v13, :cond_12

    if-nez v7, :cond_d

    if-le v5, v7, :cond_12

    :cond_d
    const/4 v12, 0x1

    .line 2305
    :goto_8
    if-eqz v10, :cond_f

    if-eqz v3, :cond_e

    if-eqz v4, :cond_f

    :cond_e
    if-nez v4, :cond_13

    if-eqz v12, :cond_13

    .line 2306
    :cond_f
    invoke-static/range {v16 .. v16}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->canComputerRenditionForType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getState()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "unmodified"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2310
    if-eqz v13, :cond_22

    move v7, v5

    move-object v5, v9

    .line 2323
    :goto_9
    if-eqz v11, :cond_14

    if-eqz v14, :cond_14

    const/16 v3, 0x190

    move/from16 v0, p2

    if-lt v0, v3, :cond_14

    if-eqz v5, :cond_10

    move/from16 v0, p2

    if-ge v7, v0, :cond_14

    .line 2324
    :cond_10
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getPrimaryRepresentation()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v9

    .line 2325
    const/4 v3, 0x0

    move-object/from16 v7, p0

    move/from16 v10, p2

    move-object/from16 v11, p6

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 2326
    invoke-virtual/range {v7 .. v13}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->downloadRenditionFromExternalLink(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;ILandroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2327
    if-eqz p7, :cond_11

    .line 2328
    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2329
    :cond_11
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2304
    :cond_12
    const/4 v12, 0x0

    goto :goto_8

    .line 2313
    :cond_13
    if-eqz v13, :cond_21

    move v4, v5

    :goto_a
    move v7, v4

    move-object v10, v9

    move v4, v3

    .line 2319
    goto/16 :goto_3

    .line 2335
    :cond_14
    if-eqz v5, :cond_1e

    .line 2336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2337
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    .line 2339
    if-nez v7, :cond_16

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_16

    .line 2340
    if-eqz p5, :cond_15

    .line 2341
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLocalLibraryCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 2343
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2346
    :cond_16
    invoke-static {v3, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2350
    const/4 v4, 0x0

    .line 2351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->serviceSession()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    move-result-object v3

    check-cast v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    .line 2353
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "AdobeStorageSession"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v4

    if-nez v4, :cond_17

    .line 2355
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorDownloadingRenditionFile:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;)V

    const/4 v5, 0x0

    invoke-static {v3, v4, v9, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 2356
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2359
    :cond_17
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v7, 0x0

    invoke-static {v4, v5, v9, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->resourceForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v12

    .line 2361
    if-nez v12, :cond_18

    .line 2362
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorDownloadingRenditionFile:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;)V

    const/4 v5, 0x0

    invoke-static {v3, v4, v9, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 2363
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2366
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->getSession()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->isPrivateService()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2367
    const/4 v4, 0x0

    iput-object v4, v12, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    :cond_19
    move-object v11, v3

    .line 2369
    check-cast v11, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    if-eqz p3, :cond_1a

    const/16 p2, 0x0

    :cond_1a
    const-string/jumbo v13, "image/png"

    const/4 v14, 0x0

    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$14;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$14;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    const/4 v10, 0x0

    move-object v4, v11

    move-object v5, v12

    move/from16 v6, p2

    move-object v7, v13

    move v8, v14

    move-object v9, v3

    invoke-virtual/range {v4 .. v10}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getRendition(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;ILjava/lang/String;ILcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageDataRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v3

    .line 2446
    :goto_b
    if-eqz p7, :cond_1b

    .line 2447
    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2450
    :cond_1b
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2401
    :cond_1c
    instance-of v7, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    if-eqz v7, :cond_20

    .line 2402
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeCommunityAssetImageDimension;->AdobeCommunityAssetImageDimensionWidth:Lcom/adobe/creativesdk/foundation/storage/AdobeCommunityAssetImageDimension;

    .line 2403
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getWidth()I

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getHeight()I

    move-result v7

    if-eqz v7, :cond_1d

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_1d

    .line 2404
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeCommunityAssetImageDimension;->AdobeCommunityAssetImageDimensionHeight:Lcom/adobe/creativesdk/foundation/storage/AdobeCommunityAssetImageDimension;

    .line 2407
    :cond_1d
    check-cast v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const-string/jumbo v8, "image/png"

    new-instance v10, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$15;

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object v14, v9

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    move-object/from16 v17, p4

    invoke-direct/range {v10 .. v17}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$15;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    const/16 v19, 0x0

    move-object v11, v3

    move-object v12, v5

    move-object v13, v7

    move-object v14, v9

    move-object v15, v4

    move/from16 v16, p2

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    invoke-virtual/range {v11 .. v19}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;->downloadComponentRendition(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeCommunityAssetImageDimension;ILjava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageDataRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v3

    goto :goto_b

    .line 2453
    :cond_1e
    if-eqz p5, :cond_1f

    .line 2454
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorNoRenditionCandidate:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 2457
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_20
    move-object v3, v4

    goto :goto_b

    :cond_21
    move v3, v4

    move-object v9, v10

    move v4, v7

    goto/16 :goto_a

    :cond_22
    move v4, v5

    goto/16 :goto_a

    :cond_23
    move-object v5, v10

    goto/16 :goto_9

    :cond_24
    move v11, v3

    move-object v5, v10

    goto/16 :goto_9

    :cond_25
    move v14, v3

    goto/16 :goto_1
.end method

.method protected isPendingDelete()Z
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 528
    const/4 v0, 0x0

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pendingDelete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 536
    return v0

    .line 534
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 535
    throw v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->isReadOnly()Z

    move-result v0

    .line 469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShared()Z
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->isShared()Z

    move-result v0

    .line 461
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method localFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1963
    .line 1964
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1966
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->isExternalLink()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1967
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDCXNodeForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    .line 1968
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementRenditions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1969
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRepresentationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1970
    if-eqz v0, :cond_0

    const-string/jumbo v2, "ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    move-object v1, v0

    .line 1984
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1987
    return-object v1

    .line 1972
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1973
    if-eqz v0, :cond_2

    .line 1976
    :try_start_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
    :try_start_3
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1984
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1985
    throw v0
.end method

.method protected lock()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 556
    return-void
.end method

.method protected moveElementAfter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 1437
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    const/4 v0, 0x0

    .line 1500
    :goto_0
    return-object v0

    .line 1440
    :cond_0
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v0, "moveElement"

    const/4 v1, 0x0

    invoke-direct {v2, v0, p0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 1444
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 1448
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1457
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementNode(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v4

    .line 1461
    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;-><init>()V

    .line 1462
    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1463
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1464
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1465
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1466
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1467
    throw v0

    .line 1449
    :catch_0
    move-exception v0

    .line 1450
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1451
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1452
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorInvalidLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1453
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1454
    throw v0

    .line 1469
    :cond_2
    iget-wide v6, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    .line 1471
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementNode(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v8

    .line 1474
    const-wide/16 v0, 0x0

    .line 1475
    if-eqz v8, :cond_3

    iget-object v9, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v9

    invoke-virtual {v9, v8, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1476
    iget-wide v0, v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    .line 1480
    :cond_3
    cmp-long v5, v0, v6

    if-lez v5, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_4

    .line 1481
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    .line 1487
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->moveNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1496
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 1497
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1498
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1499
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto/16 :goto_0

    .line 1488
    :catch_1
    move-exception v0

    .line 1489
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1490
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1491
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1492
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1493
    throw v0
.end method

.method protected moveElementBefore(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1512
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 1578
    :goto_0
    return-object v0

    .line 1515
    :cond_0
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v0, "moveElement"

    invoke-direct {v3, v0, p0, p1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 1518
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 1519
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 1523
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1532
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementNode(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v5

    .line 1536
    new-instance v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;

    invoke-direct {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;-><init>()V

    .line 1537
    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1538
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1539
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1540
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v2, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1541
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1542
    throw v0

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1526
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1527
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorInvalidLibraryComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1528
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1529
    throw v0

    .line 1544
    :cond_2
    iget-wide v8, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    .line 1546
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementNode(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v7

    .line 1549
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v0

    .line 1550
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 1551
    if-eqz v7, :cond_3

    .line 1552
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 1553
    iget-wide v0, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    .line 1558
    :cond_3
    cmp-long v6, v0, v8

    if-lez v6, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_4

    .line 1559
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    .line 1565
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->moveNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1574
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 1575
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1576
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1577
    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto/16 :goto_0

    .line 1566
    :catch_1
    move-exception v0

    .line 1567
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1568
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1569
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1570
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1571
    throw v0
.end method

.method readLibraryPlist()V
    .locals 4

    .prologue
    .line 592
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 594
    :try_start_0
    const-string/jumbo v0, "library.plist"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getRelativeTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 598
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 600
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 601
    const-string/jumbo v1, "renditions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditions:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditions:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 607
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditions:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 611
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    :goto_1
    :try_start_3
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 610
    throw v0

    .line 602
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected refreshWithComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 576
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 577
    if-eqz p1, :cond_0

    .line 578
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 579
    if-eqz p2, :cond_1

    :goto_0
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLastCommittedBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 589
    return-void

    .line 579
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 588
    throw v0
.end method

.method protected removeCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3660
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 3662
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 3663
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3664
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3667
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCategoryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3668
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3669
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3672
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3676
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    .line 3677
    if-nez v3, :cond_2

    .line 3678
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3679
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorCategoryDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3730
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3731
    throw v0

    .line 3684
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsNodeOfComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 3688
    :goto_0
    if-nez v1, :cond_3

    .line 3689
    :try_start_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3730
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3733
    :goto_1
    return-object v0

    .line 3685
    :catch_0
    move-exception v1

    .line 3686
    :try_start_3
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    .line 3696
    :cond_3
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 3697
    if-eqz v1, :cond_6

    .line 3698
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 3699
    const-string/jumbo v1, "library#category"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3700
    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3701
    if-eqz p2, :cond_4

    .line 3703
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-object v0, v2

    :goto_3
    move-object v2, v0

    .line 3723
    goto :goto_2

    .line 3705
    :cond_4
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    .line 3706
    if-eqz v1, :cond_9

    .line 3707
    if-eqz p3, :cond_5

    .line 3709
    const-string/jumbo v0, "library#category"

    invoke-virtual {v1, p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3716
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v2

    .line 3719
    goto :goto_3

    .line 3712
    :cond_5
    :try_start_5
    const-string/jumbo v0, "library#category"

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->remove(Ljava/lang/String;)V

    goto :goto_4

    .line 3717
    :catch_1
    move-exception v0

    .line 3718
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddCategory:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v5, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v2, v0

    .line 3726
    :cond_7
    if-eqz v2, :cond_8

    .line 3727
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3728
    :cond_8
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    invoke-direct {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3730
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3732
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    goto/16 :goto_1

    :cond_9
    move-object v0, v2

    goto :goto_3
.end method

.method public removeElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1325
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 1356
    :goto_0
    return-object v0

    .line 1328
    :cond_0
    new-instance v7, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v0, "deleteElement"

    invoke-direct {v7, v0, p0, p1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 1330
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppDelete:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;-><init>(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "libray_element"

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 1334
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 1337
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->removeRenditionCacheForElement(Ljava/lang/String;)Z

    .line 1339
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementNode(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 1340
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 1341
    if-nez v1, :cond_1

    .line 1342
    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 1343
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v6, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1344
    invoke-virtual {v7, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1345
    throw v0

    .line 1349
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeUnusedLocalFiles()J

    .line 1351
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1352
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 1354
    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v7, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1356
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-direct {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    goto :goto_0
.end method

.method protected removeRenditionCacheForElement(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2015
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v2

    .line 2016
    if-nez v2, :cond_0

    .line 2049
    :goto_0
    return v0

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditions:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    move v0, v1

    .line 2021
    goto :goto_0

    .line 2023
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2025
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditions:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2026
    if-eqz v2, :cond_3

    .line 2027
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2028
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2029
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2030
    if-eqz v0, :cond_2

    .line 2031
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_2

    .line 2032
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2033
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2034
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v5, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to delete rendition cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2043
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2044
    throw v0

    .line 2041
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditions:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2043
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2047
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->writeLibraryPlist()Z

    move v0, v1

    .line 2049
    goto :goto_0
.end method

.method protected removeRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3422
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getMutableElementOfRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;

    move-result-object v7

    .line 3424
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppDelete:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;-><init>(Ljava/lang/String;)V

    .line 3425
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRepresentationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "libray_element_representation"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getWidth()I

    move-result v8

    mul-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 3428
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 3431
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3432
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 3433
    if-eqz v2, :cond_2

    .line 3434
    invoke-virtual {p0, v7, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->elementRepresentationsChanged(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)V

    .line 3435
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 3439
    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3440
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    .line 3441
    if-eqz v2, :cond_0

    .line 3442
    invoke-virtual {p0, v7, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->elementRepresentationsChanged(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)V

    .line 3444
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeUnusedLocalFiles()J

    .line 3446
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 3450
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3451
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3453
    if-nez v1, :cond_1

    .line 3454
    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3455
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorRepresentationDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v6, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3458
    :cond_1
    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3459
    return-object v1

    :cond_2
    move-object v1, v6

    goto :goto_0
.end method

.method revertUnsyncedChanges(Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 683
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 684
    if-eqz p3, :cond_0

    .line 685
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorStartupFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    invoke-direct {p0, p3, p1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    const-string/jumbo v2, "modified"

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 691
    if-eqz p2, :cond_0

    .line 692
    invoke-direct {p0, p2, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 690
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 697
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    .line 698
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->removeLibraryFromSyncQueues(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 700
    if-eqz p3, :cond_0

    .line 701
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToSave:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const-string/jumbo v2, "Cannot revert. Library sync in progress"

    invoke-static {v0, v1, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    invoke-direct {p0, p3, p1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 697
    goto :goto_2

    .line 708
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->revertCurrentBranchToBase()Z

    move-result v0

    .line 709
    if-eqz v0, :cond_0

    .line 710
    if-eqz p2, :cond_7

    .line 711
    invoke-direct {p0, p2, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callCompletionHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    if-eqz p3, :cond_0

    .line 716
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToSave:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v2, v0, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    invoke-direct {p0, p3, p1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    goto :goto_0

    .line 712
    :cond_7
    if-eqz p3, :cond_0

    .line 713
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToSave:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    invoke-direct {p0, p3, p1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->callErrorHandler(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setCollaborationRole(Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;)V
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setCollaborationRoleType(Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;)V

    .line 455
    return-void
.end method

.method setLibraryId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 355
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLibraryId:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 357
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    if-eqz v0, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 419
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_1

    .line 421
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->validateAndTrimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    :try_start_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeLibraryComposite.setName"

    const-string/jumbo v3, "failed in endChanges"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 431
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 432
    throw v0
.end method

.method public setRenditionCache(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 2640
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    .line 2641
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 2642
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v6, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 2645
    :cond_1
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementRenditions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2647
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v0, v3, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2648
    :goto_0
    if-eqz p3, :cond_3

    const-string/jumbo v0, "full"

    .line 2649
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2651
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2652
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2653
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Failed to create element renditions directory"

    invoke-static {v0, v1, v2, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2654
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLocalLibraryCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v6, v4, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 2647
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 2648
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2657
    :cond_4
    invoke-static {v4, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2658
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2659
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2661
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2664
    :cond_5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2667
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2672
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2674
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 2675
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2683
    :try_start_2
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2688
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->writeLibraryPlist()Z

    .line 2690
    const/4 v0, 0x1

    :goto_3
    return v0

    .line 2668
    :catch_0
    move-exception v0

    .line 2669
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 2670
    goto :goto_3

    .line 2676
    :catch_1
    move-exception v0

    .line 2677
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 2678
    goto :goto_3

    .line 2684
    :catch_2
    move-exception v0

    .line 2685
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setRenditionCache(Ljava/lang/String;Ljava/lang/String;IZZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2567
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    .line 2569
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p4, :cond_1

    if-gtz p3, :cond_1

    .line 2570
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v5, v5, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 2573
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2579
    if-eqz p4, :cond_2

    const-string/jumbo v0, "full"

    .line 2580
    :goto_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementRenditions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2582
    if-eqz p5, :cond_5

    .line 2583
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2584
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2585
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Failed to create element renditions directory"

    invoke-static {v0, v1, v3, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2586
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLocalLibraryCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v5, v2, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 2579
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2589
    :cond_3
    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2591
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2594
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 2599
    :cond_4
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2607
    :try_start_1
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2620
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->writeLibraryPlist()Z

    .line 2626
    const/4 v0, 0x1

    return v0

    .line 2601
    :catch_0
    move-exception v0

    .line 2602
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorCopyingRenditionFile:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, p2, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 2608
    :catch_1
    move-exception v0

    .line 2609
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2613
    :cond_5
    :try_start_2
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 2614
    :catch_2
    move-exception v0

    .line 2615
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2623
    :cond_6
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v5, p2, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0
.end method

.method protected shouldDownloadExternalAssetForRepresentation(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1991
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 1993
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.adobe.library.link+dcx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1994
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;-><init>()V

    .line 1995
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    .line 1996
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementRenditions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1997
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1998
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 1999
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2003
    :cond_0
    :goto_0
    return v0

    .line 2002
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    goto :goto_0
.end method

.method protected unlock()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 563
    return-void
.end method

.method protected updateCategory(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 3629
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3632
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3636
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3642
    :try_start_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCategory;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3644
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3646
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3647
    return-object v1

    .line 3637
    :catch_0
    move-exception v0

    .line 3638
    :try_start_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3639
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorCategoryDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3644
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3645
    throw v0
.end method

.method protected updateElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3066
    new-instance v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v0, "updateElement"

    invoke-direct {v6, v0, p0, p1, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 3068
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppUpdate:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;-><init>(Ljava/lang/String;)V

    .line 3069
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "libray_element"

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 3072
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 3074
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->updateModified()V

    .line 3077
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 3078
    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3088
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3089
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3090
    invoke-virtual {v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3091
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    return-object v0

    .line 3079
    :catch_0
    move-exception v1

    .line 3080
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3081
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3082
    const-string/jumbo v2, "failure"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3083
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v7, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 3084
    invoke-virtual {v6, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3085
    throw v0
.end method

.method updateModified()V
    .locals 4

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->getCurrentTimeInMilliseconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "library#modified"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2793
    return-void
.end method

.method protected updateRepresentation(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3363
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getMutableElementOfRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;

    move-result-object v7

    .line 3365
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppUpdate:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;-><init>(Ljava/lang/String;)V

    .line 3366
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getRepresentationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "libray_element_representation"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getWidth()I

    move-result v8

    mul-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 3369
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 3371
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3374
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3382
    invoke-virtual {p0, v7, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->elementRepresentationsChanged(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)V

    .line 3383
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 3386
    :goto_0
    if-nez v1, :cond_1

    .line 3387
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 3391
    if-eqz v1, :cond_0

    .line 3393
    :try_start_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 3402
    :cond_0
    invoke-virtual {p0, v7, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->elementRepresentationsChanged(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)V

    .line 3403
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    invoke-direct {v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    move-object v1, v2

    .line 3406
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3407
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3409
    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3411
    return-object v1

    .line 3375
    :catch_0
    move-exception v1

    .line 3376
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3377
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3378
    const-string/jumbo v2, "failure"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3379
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorRepresentationDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 3394
    :catch_1
    move-exception v1

    .line 3395
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 3396
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 3397
    const-string/jumbo v2, "failure"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 3398
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorRepresentationDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v1, v6

    goto :goto_0
.end method

.method writeLibraryPlist()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 614
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 615
    const/4 v0, 0x1

    .line 617
    :try_start_0
    const-string/jumbo v1, "library.plist"

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditionsURL:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getRelativeTo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    :try_start_1
    const-string/jumbo v4, "renditions"

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mRenditions:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 623
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 625
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 627
    :try_start_2
    sget-object v2, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 628
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 629
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 634
    if-eqz v1, :cond_0

    .line 636
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 643
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 645
    return v0

    .line 637
    :catch_0
    move-exception v1

    .line 638
    :try_start_4
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 643
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 644
    throw v0

    .line 630
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    move-object v2, v1

    .line 631
    :goto_2
    :try_start_5
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 632
    const/4 v0, 0x0

    .line 634
    if-eqz v2, :cond_0

    .line 636
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 637
    :catch_2
    move-exception v1

    .line 638
    :try_start_7
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 634
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 636
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 641
    :cond_1
    :goto_4
    :try_start_9
    throw v0

    .line 637
    :catch_3
    move-exception v1

    .line 638
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 634
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 630
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1
.end method

.method writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2478
    .line 2481
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2482
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2484
    const/4 v0, 0x1

    .line 2490
    if-eqz v1, :cond_0

    .line 2491
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2498
    :cond_0
    :goto_0
    return v0

    .line 2493
    :catch_0
    move-exception v1

    .line 2494
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2485
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 2486
    :goto_1
    :try_start_3
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2487
    const/4 v0, 0x0

    .line 2490
    if-eqz v1, :cond_0

    .line 2491
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2493
    :catch_2
    move-exception v1

    .line 2494
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2489
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 2490
    :goto_2
    if-eqz v1, :cond_1

    .line 2491
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2496
    :cond_1
    :goto_3
    throw v0

    .line 2493
    :catch_3
    move-exception v1

    .line 2494
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2489
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 2485
    :catch_4
    move-exception v0

    goto :goto_1
.end method
