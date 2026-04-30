.class public Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;
.super Ljava/lang/Object;
.source "FileRequestDeadline.java"


# instance fields
.field protected final allowLateUploads:Lcom/dropbox/core/v2/filerequests/GracePeriod;

.field protected final deadline:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;-><init>(Ljava/util/Date;Lcom/dropbox/core/v2/filerequests/GracePeriod;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/dropbox/core/v2/filerequests/GracePeriod;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'deadline\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->deadline:Ljava/util/Date;

    .line 41
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->allowLateUploads:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p1, p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    check-cast p1, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 98
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->deadline:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->deadline:Ljava/util/Date;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->deadline:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->deadline:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->allowLateUploads:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->allowLateUploads:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->allowLateUploads:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->allowLateUploads:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->allowLateUploads:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .line 99
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/filerequests/GracePeriod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 103
    goto :goto_0
.end method

.method public getAllowLateUploads()Lcom/dropbox/core/v2/filerequests/GracePeriod;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->allowLateUploads:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    return-object v0
.end method

.method public getDeadline()Ljava/util/Date;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->deadline:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->deadline:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->allowLateUploads:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 84
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
