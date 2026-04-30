.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;
.super Ljava/lang/Object;
.source "SharedContentChangeLinkPasswordDetails.java"


# instance fields
.field protected originalFolderName:Ljava/lang/String;

.field protected sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;->targetAssetIndex:J

    .line 105
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;
    .locals 5

    .prologue
    .line 142
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;->targetAssetIndex:J

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;->sharedFolderType:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withOriginalFolderName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public withSharedFolderType(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 131
    return-object p0
.end method
