.class public Lcom/adobe/premiereclip/dcx/DCXMergeSelection;
.super Ljava/lang/Object;
.source "DCXMergeSelection.java"


# instance fields
.field private branch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

.field private mutableBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

.field private node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

.field private nodeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 41
    iput-object p2, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->nodeId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->mutableBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 46
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 47
    iput-object p2, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->nodeId:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    return-object v0
.end method

.method public ensureNewest(Lcom/adobe/premiereclip/dcx/DCXMergeSelection;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->mutableBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->isNewerThan(Lcom/adobe/premiereclip/dcx/DCXMergeSelection;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    const-string/jumbo v0, "DCXUtils"

    const-string/jumbo v1, "Replacing entire node %s on branch %s with node %s on branch %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->nodeId:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 94
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->nodeId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 93
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->node()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->findParentOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    .line 104
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 105
    iget-wide v4, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    long-to-int v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 107
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->mutableBranch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->node()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 109
    :try_start_0
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;-><init>()V

    .line 110
    int-to-long v0, v0

    iput-wide v0, v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    .line 111
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->mutableBranch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->node()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v2

    iget-wide v4, v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->copyChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->nodeId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 126
    :goto_1
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0

    .line 123
    :cond_0
    const-string/jumbo v0, "DCXUtils"

    const-string/jumbo v1, "DCXMergeSelection.ensureNewest - Selection does not contain a mutable version of branch %s"

    new-array v2, v4, [Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 123
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public ensureNewestProperties(Lcom/adobe/premiereclip/dcx/DCXMergeSelection;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->mutableBranch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->isNewerThan(Lcom/adobe/premiereclip/dcx/DCXMergeSelection;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const-string/jumbo v0, "DCXUtils"

    const-string/jumbo v1, "Replacing properties in node %s on branch %s with node %s on branch %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->nodeId:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 136
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->nodeId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 135
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->node()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->node()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->mutableBranch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 156
    :goto_1
    return-object v0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0

    .line 153
    :cond_0
    const-string/jumbo v0, "DCXUtils"

    const-string/jumbo v1, "DCXMergeSelection.ensureNewestProperties - Selection does not contain a mutable version of branch %s"

    new-array v2, v4, [Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 153
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public isEqual(Lcom/adobe/premiereclip/dcx/DCXMergeSelection;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    if-nez p1, :cond_0

    .line 163
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->getNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->getNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isNewerThan(Lcom/adobe/premiereclip/dcx/DCXMergeSelection;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 63
    if-nez p1, :cond_0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->node()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 69
    if-nez v2, :cond_1

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->node()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    .line 75
    if-nez v3, :cond_2

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v2

    .line 81
    invoke-static {v3}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Lcom/adobe/premiereclip/dcx/DCXUtils;->dictionaryWithMostRecentModificationTime(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-ne v3, v2, :cond_3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public mutableBranch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->mutableBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    return-object v0
.end method

.method public node()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->branch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->nodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    return-object v0
.end method
