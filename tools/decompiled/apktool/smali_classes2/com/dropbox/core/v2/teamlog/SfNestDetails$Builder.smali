.class public Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;
.super Ljava/lang/Object;
.source "SfNestDetails.java"


# instance fields
.field protected newParentNsId:Ljava/lang/String;

.field protected final originalFolderName:Ljava/lang/String;

.field protected prevParentNsId:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method protected constructor <init>(JLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;->targetAssetIndex:J

    .line 147
    if-nez p3, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'originalFolderName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;->originalFolderName:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;->prevParentNsId:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;->newParentNsId:Ljava/lang/String;

    .line 153
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/SfNestDetails;
    .locals 7

    .prologue
    .line 206
    new-instance v1, Lcom/dropbox/core/v2/teamlog/SfNestDetails;

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;->targetAssetIndex:J

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;->originalFolderName:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;->prevParentNsId:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;->newParentNsId:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/SfNestDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public withNewParentNsId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;
    .locals 2

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newParentNsId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;->newParentNsId:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public withPrevParentNsId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;
    .locals 2

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'prevParentNsId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;->prevParentNsId:Ljava/lang/String;

    .line 174
    return-object p0
.end method
