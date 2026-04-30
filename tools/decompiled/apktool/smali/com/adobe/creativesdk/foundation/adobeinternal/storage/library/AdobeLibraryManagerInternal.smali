.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;
.source "AdobeLibraryManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bookmarksChanged()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->bookmarksChanged()V

    .line 24
    return-void
.end method

.method public bookmarksFileSynced(Z)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->bookmarksFileSynced(Z)V

    .line 52
    return-void
.end method

.method public canSync()Z
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->canSync()Z

    move-result v0

    return v0
.end method

.method public canSyncWithError(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->canSyncWithError(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public getAutoDownloadPolicy()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mAutoDownloadPolicy:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    return-object v0
.end method

.method public getAutoSyncInterval()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mAutoSyncInterval:J

    return-wide v0
.end method

.method public getBookmarlURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getBookmarlURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenditionSizes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRenditionSizes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRootLibraryCollectionsURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRootLibraryCollectionsURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUnInitialized()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mUnInitialized:Z

    return v0
.end method

.method public handleDeleteLibraryWithId(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->handleDeleteLibraryWithId(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    .line 56
    return-void
.end method

.method public handleLibraryReadOnlyConversion(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->handleLibraryReadOnlyConversion(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 84
    return-void
.end method

.method public onNetworkStatus(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->onNetworkStatus(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    .line 68
    return-void
.end method

.method public reportSyncError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->reportSyncError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 28
    return-void
.end method

.method public sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 45
    return-void
.end method

.method public sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 80
    return-void
.end method

.method public sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public sendDelegateMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setSyncSuspendedDueToAuthenticationError(Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncSuspendedDueToAuthenticationError:Z

    .line 112
    return-void
.end method

.method public shouldAutoDownloadType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->shouldAutoDownloadType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldAutoSyncDownloadAssets()Z
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->shouldAutoSyncDownloadAssets()Z

    move-result v0

    return v0
.end method

.method public shouldSyncOnCommit()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->shouldSyncOnCommit()Z

    move-result v0

    return v0
.end method

.method public shouldincludeBookmarkedLibraries()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->includeBookmarkedLibraries:Z

    return v0
.end method

.method public syncCompletedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->syncCompletedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    .line 120
    return-void
.end method

.method public syncStartedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->syncStartedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    .line 40
    return-void
.end method
