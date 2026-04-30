.class Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;
.super Lcom/dropbox/core/v2/paper/RefPaperDoc;
.source "PaperDocUpdateArgs.java"


# instance fields
.field protected final docUpdatePolicy:Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;

.field protected final importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

.field protected final revision:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;JLcom/dropbox/core/v2/paper/ImportFormat;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 41
    if-nez p2, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'docUpdatePolicy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docUpdatePolicy:Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;

    .line 45
    iput-wide p3, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->revision:J

    .line 46
    if-nez p5, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'importFormat\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p5, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    if-ne p1, p0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    check-cast p1, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;

    .line 111
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docUpdatePolicy:Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docUpdatePolicy:Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docUpdatePolicy:Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docUpdatePolicy:Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;

    .line 112
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-wide v2, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->revision:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->revision:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    .line 114
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/paper/ImportFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docId:Ljava/lang/String;

    return-object v0
.end method

.method public getDocUpdatePolicy()Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docUpdatePolicy:Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;

    return-object v0
.end method

.method public getImportFormat()Lcom/dropbox/core/v2/paper/ImportFormat;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    return-object v0
.end method

.method public getRevision()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->revision:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->docUpdatePolicy:Lcom/dropbox/core/v2/paper/PaperDocUpdatePolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->revision:J

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs;->importFormat:Lcom/dropbox/core/v2/paper/ImportFormat;

    aput-object v2, v0, v1

    .line 91
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 96
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/RefPaperDoc;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 97
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
