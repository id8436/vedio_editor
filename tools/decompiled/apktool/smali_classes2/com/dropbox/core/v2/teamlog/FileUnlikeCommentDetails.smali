.class public Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;
.super Ljava/lang/Object;
.source "FileUnlikeCommentDetails.java"


# instance fields
.field protected final commentText:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;-><init>(JLjava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->targetAssetIndex:J

    .line 36
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->commentText:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    check-cast p1, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;

    .line 88
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->targetAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->targetAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->commentText:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->commentText:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->commentText:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->commentText:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->commentText:Ljava/lang/String;

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public getCommentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->commentText:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->targetAssetIndex:J

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;->commentText:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 70
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 74
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
