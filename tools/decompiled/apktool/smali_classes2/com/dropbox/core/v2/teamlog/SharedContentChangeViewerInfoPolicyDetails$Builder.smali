.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;
.super Ljava/lang/Object;
.source "SharedContentChangeViewerInfoPolicyDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

.field protected originalFolderName:Ljava/lang/String;

.field protected previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

.field protected sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(JLcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->targetAssetIndex:J

    .line 146
    if-nez p3, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    .line 150
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    .line 153
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;
    .locals 8

    .prologue
    .line 202
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->targetAssetIndex:J

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->sharedFolderType:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;-><init>(JLcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;)V

    return-object v1
.end method

.method public withOriginalFolderName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    .line 190
    return-object p0
.end method

.method public withSharedFolderType(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 177
    return-object p0
.end method
