.class public Lcom/dropbox/core/v2/filerequests/FileRequest;
.super Ljava/lang/Object;
.source "FileRequest.java"


# instance fields
.field protected final created:Ljava/util/Date;

.field protected final deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

.field protected final destination:Ljava/lang/String;

.field protected final fileCount:J

.field protected final id:Ljava/lang/String;

.field protected final isOpen:Z

.field protected final title:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJ)V
    .locals 10

    .prologue
    .line 128
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/filerequests/FileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJLjava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJLjava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'id\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    const-string/jumbo v0, "[-_0-9a-zA-Z]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    .line 77
    if-nez p2, :cond_3

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'url\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_4

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'url\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    .line 84
    if-nez p3, :cond_5

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'title\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_6

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'title\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_6
    iput-object p3, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    .line 91
    if-eqz p8, :cond_7

    .line 92
    const-string/jumbo v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p8}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'destination\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_7
    iput-object p8, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    .line 97
    if-nez p4, :cond_8

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'created\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_8
    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    .line 101
    iput-object p9, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 102
    iput-boolean p5, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->isOpen:Z

    .line 103
    iput-wide p6, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->fileCount:J

    .line 104
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJ)Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
    .locals 9

    .prologue
    .line 228
    new-instance v0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 345
    if-ne p1, p0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 349
    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 353
    check-cast p1, Lcom/dropbox/core/v2/filerequests/FileRequest;

    .line 354
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    .line 357
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-boolean v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->isOpen:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->isOpen:Z

    if-ne v2, v3, :cond_8

    iget-wide v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->fileCount:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->fileCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    .line 360
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 361
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 365
    goto/16 :goto_0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getDeadline()Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getFileCount()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->fileCount:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOpen()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->isOpen:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 330
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->destination:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->created:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->isOpen:Z

    .line 337
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest;->fileCount:J

    .line 338
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 330
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 340
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    sget-object v0, Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    sget-object v0, Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
