.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;
.super Ljava/lang/Object;
.source "SharedContentChangeLinkAudienceDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/LinkAudience;

.field protected originalFolderName:Ljava/lang/String;

.field protected previousValue:Lcom/dropbox/core/v2/teamlog/LinkAudience;

.field protected sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(JLcom/dropbox/core/v2/teamlog/LinkAudience;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->targetAssetIndex:J

    .line 147
    if-nez p3, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/LinkAudience;

    .line 151
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/LinkAudience;

    .line 154
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;
    .locals 8

    .prologue
    .line 202
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->targetAssetIndex:J

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/LinkAudience;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->sharedFolderType:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/LinkAudience;

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;-><init>(JLcom/dropbox/core/v2/teamlog/LinkAudience;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/LinkAudience;)V

    return-object v1
.end method

.method public withOriginalFolderName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teamlog/LinkAudience;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/LinkAudience;

    .line 191
    return-object p0
.end method

.method public withSharedFolderType(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 178
    return-object p0
.end method
