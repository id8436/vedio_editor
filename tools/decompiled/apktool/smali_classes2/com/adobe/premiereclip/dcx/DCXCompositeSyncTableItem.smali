.class public Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;
.super Ljava/lang/Object;
.source "DCXCompositeSyncTableItem.java"


# static fields
.field private static final ccAssetDownloadKey:Ljava/lang/String; = "ccAssetDownload"

.field private static final kPullRequestKey:Ljava/lang/String; = "pullRequest"

.field private static final kPushRequestKey:Ljava/lang/String; = "pushRequest"


# instance fields
.field private ccAssetDownloadText:Ljava/lang/String;

.field private compositeId:Ljava/lang/String;

.field private downloadStatusText:Ljava/lang/String;

.field private projectName:Ljava/lang/String;

.field private projectPosterPath:Ljava/lang/String;

.field private requests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;"
        }
    .end annotation
.end field

.field private syncedStatusText:Ljava/lang/String;

.field private uploadStatusText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->compositeId:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->requests:Ljava/util/HashMap;

    .line 46
    return-void
.end method


# virtual methods
.method public addRequest(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "pullRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->requests:Ljava/util/HashMap;

    const-string/jumbo v1, "pullRequest"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->requests:Ljava/util/HashMap;

    const-string/jumbo v1, "pushRequest"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCcAssetDownloadText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->ccAssetDownloadText:Ljava/lang/String;

    return-object v0
.end method

.method public getCompositeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->compositeId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->downloadStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectPosterPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->projectPosterPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPullRequest()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->requests:Ljava/util/HashMap;

    const-string/jumbo v1, "pullRequest"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    return-object v0
.end method

.method public getPushRequest()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->requests:Ljava/util/HashMap;

    const-string/jumbo v1, "pushRequest"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    return-object v0
.end method

.method public getSyncedStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->syncedStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->uploadStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public removeRequest(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    const-string/jumbo v0, "pullRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->requests:Ljava/util/HashMap;

    const-string/jumbo v1, "pullRequest"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->requests:Ljava/util/HashMap;

    const-string/jumbo v1, "pushRequest"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCcAssetDownloadText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->ccAssetDownloadText:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setDownloadStatusText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->downloadStatusText:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setProjectName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->projectName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setProjectPosterPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->projectPosterPath:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setSyncedStatusText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->syncedStatusText:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setUploadStatusText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->uploadStatusText:Ljava/lang/String;

    .line 54
    return-void
.end method
