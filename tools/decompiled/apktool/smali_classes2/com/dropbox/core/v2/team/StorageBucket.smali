.class public Lcom/dropbox/core/v2/team/StorageBucket;
.super Ljava/lang/Object;
.source "StorageBucket.java"


# instance fields
.field protected final bucket:Ljava/lang/String;

.field protected final users:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'bucket\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    .line 44
    iput-wide p2, p0, Lcom/dropbox/core/v2/team/StorageBucket;->users:J

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 82
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    check-cast p1, Lcom/dropbox/core/v2/team/StorageBucket;

    .line 87
    iget-object v2, p0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lcom/dropbox/core/v2/team/StorageBucket;->users:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/team/StorageBucket;->users:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/dropbox/core/v2/team/StorageBucket;->users:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/StorageBucket;->bucket:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/team/StorageBucket;->users:J

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 69
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 73
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/dropbox/core/v2/team/StorageBucket$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/StorageBucket$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/StorageBucket$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/dropbox/core/v2/team/StorageBucket$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/StorageBucket$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/StorageBucket$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
