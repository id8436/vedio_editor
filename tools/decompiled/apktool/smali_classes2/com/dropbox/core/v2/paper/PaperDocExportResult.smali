.class public Lcom/dropbox/core/v2/paper/PaperDocExportResult;
.super Ljava/lang/Object;
.source "PaperDocExportResult.java"


# instance fields
.field protected final mimeType:Ljava/lang/String;

.field protected final owner:Ljava/lang/String;

.field protected final revision:J

.field protected final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'owner\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    .line 44
    if-nez p2, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'title\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    .line 48
    iput-wide p3, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->revision:J

    .line 49
    if-nez p5, :cond_2

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'mimeType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    iput-object p5, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    if-ne p1, p0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 109
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    check-cast p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;

    .line 114
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-wide v2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->revision:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->revision:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->revision:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->revision:J

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 94
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 100
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
