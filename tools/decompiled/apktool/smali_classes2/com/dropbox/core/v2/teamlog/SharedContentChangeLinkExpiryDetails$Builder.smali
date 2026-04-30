.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;
.super Ljava/lang/Object;
.source "SharedContentChangeLinkExpiryDetails.java"


# instance fields
.field protected final expirationDays:J

.field protected final expirationStartDate:Ljava/lang/String;

.field protected originalFolderName:Ljava/lang/String;

.field protected sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(JLjava/lang/String;J)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->targetAssetIndex:J

    .line 154
    if-nez p3, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'expirationStartDate\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->expirationStartDate:Ljava/lang/String;

    .line 158
    iput-wide p4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->expirationDays:J

    .line 159
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;
    .locals 8

    .prologue
    .line 195
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;

    iget-wide v1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->targetAssetIndex:J

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->expirationStartDate:Ljava/lang/String;

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->expirationDays:J

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->sharedFolderType:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withOriginalFolderName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public withSharedFolderType(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Builder;->sharedFolderType:Ljava/lang/String;

    .line 185
    return-object p0
.end method
