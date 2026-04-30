.class public Lcom/dropbox/core/v2/teamlog/SfNestDetails;
.super Ljava/lang/Object;
.source "SfNestDetails.java"


# instance fields
.field protected final newParentNsId:Ljava/lang/String;

.field protected final originalFolderName:Ljava/lang/String;

.field protected final prevParentNsId:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 79
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/SfNestDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->targetAssetIndex:J

    .line 48
    if-nez p3, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'originalFolderName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->originalFolderName:Ljava/lang/String;

    .line 52
    if-eqz p4, :cond_1

    .line 53
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'prevParentNsId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->prevParentNsId:Ljava/lang/String;

    .line 58
    if-eqz p5, :cond_2

    .line 59
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newParentNsId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->newParentNsId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static newBuilder(JLjava/lang/String;)Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Builder;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    if-ne p1, p0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 227
    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SfNestDetails;

    .line 232
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->targetAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->targetAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->originalFolderName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->originalFolderName:Ljava/lang/String;

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->prevParentNsId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->prevParentNsId:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->prevParentNsId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->prevParentNsId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->prevParentNsId:Ljava/lang/String;

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->newParentNsId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->newParentNsId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->newParentNsId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->newParentNsId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->newParentNsId:Ljava/lang/String;

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 239
    goto :goto_0
.end method

.method public getNewParentNsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->newParentNsId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevParentNsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->prevParentNsId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 212
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->targetAssetIndex:J

    .line 213
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->originalFolderName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->prevParentNsId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfNestDetails;->newParentNsId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 212
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 218
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
