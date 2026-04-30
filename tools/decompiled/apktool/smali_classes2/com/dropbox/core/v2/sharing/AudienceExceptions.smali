.class public Lcom/dropbox/core/v2/sharing/AudienceExceptions;
.super Ljava/lang/Object;
.source "AudienceExceptions.java"


# instance fields
.field protected final count:J

.field protected final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AudienceExceptionContentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AudienceExceptionContentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->count:J

    .line 45
    if-nez p3, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'exceptions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AudienceExceptionContentInfo;

    .line 49
    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'exceptions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    if-ne p1, p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 90
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    check-cast p1, Lcom/dropbox/core/v2/sharing/AudienceExceptions;

    .line 95
    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->count:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->count:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    .line 96
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 100
    goto :goto_0
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->count:J

    return-wide v0
.end method

.method public getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AudienceExceptionContentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->count:J

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AudienceExceptions;->exceptions:Ljava/util/List;

    aput-object v2, v0, v1

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 81
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/dropbox/core/v2/sharing/AudienceExceptions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AudienceExceptions$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AudienceExceptions$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/dropbox/core/v2/sharing/AudienceExceptions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AudienceExceptions$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AudienceExceptions$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
