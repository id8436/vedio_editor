.class public Lcom/dropbox/core/v2/files/CommitInfo;
.super Ljava/lang/Object;
.source "CommitInfo.java"


# instance fields
.field protected final autorename:Z

.field protected final clientModified:Ljava/util/Date;

.field protected final mode:Lcom/dropbox/core/v2/files/WriteMode;

.field protected final mute:Z

.field protected final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 86
    sget-object v2, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/CommitInfo;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;Z)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    const-string/jumbo v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/CommitInfo;->path:Ljava/lang/String;

    .line 64
    if-nez p2, :cond_2

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'mode\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    .line 68
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/CommitInfo;->autorename:Z

    .line 69
    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfo;->clientModified:Ljava/util/Date;

    .line 70
    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/CommitInfo;->mute:Z

    .line 71
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/CommitInfo$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    if-ne p1, p0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 304
    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 308
    check-cast p1, Lcom/dropbox/core/v2/files/CommitInfo;

    .line 309
    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfo;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfo;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfo;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    .line 310
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/WriteMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->autorename:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/CommitInfo;->autorename:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->clientModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfo;->clientModified:Ljava/util/Date;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->clientModified:Ljava/util/Date;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->clientModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfo;->clientModified:Ljava/util/Date;

    .line 312
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->mute:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/CommitInfo;->mute:Z

    if-eq v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 317
    goto :goto_0
.end method

.method public getAutorename()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/CommitInfo;->autorename:Z

    return v0
.end method

.method public getClientModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfo;->clientModified:Ljava/util/Date;

    return-object v0
.end method

.method public getMode()Lcom/dropbox/core/v2/files/WriteMode;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfo;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/CommitInfo;->mute:Z

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 288
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->path:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->autorename:Z

    .line 291
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->clientModified:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/CommitInfo;->mute:Z

    .line 293
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 288
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 295
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/dropbox/core/v2/files/CommitInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CommitInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CommitInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lcom/dropbox/core/v2/files/CommitInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CommitInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CommitInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
