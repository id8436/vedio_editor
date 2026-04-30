.class public Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
.super Ljava/lang/Object;
.source "FileRequest.java"


# instance fields
.field protected final created:Ljava/util/Date;

.field protected deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

.field protected destination:Ljava/lang/String;

.field protected final fileCount:J

.field protected final id:Ljava/lang/String;

.field protected final isOpen:Z

.field protected final title:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    if-nez p1, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'id\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    const-string/jumbo v0, "[-_0-9a-zA-Z]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->id:Ljava/lang/String;

    .line 256
    if-nez p2, :cond_3

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'url\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_4

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'url\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->url:Ljava/lang/String;

    .line 263
    if-nez p3, :cond_5

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'title\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_6

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'title\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_6
    iput-object p3, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->title:Ljava/lang/String;

    .line 270
    if-nez p4, :cond_7

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'created\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_7
    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->created:Ljava/util/Date;

    .line 274
    iput-boolean p5, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->isOpen:Z

    .line 275
    iput-wide p6, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->fileCount:J

    .line 276
    iput-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->destination:Ljava/lang/String;

    .line 277
    iput-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 278
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 10

    .prologue
    .line 324
    new-instance v0, Lcom/dropbox/core/v2/filerequests/FileRequest;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->created:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->isOpen:Z

    iget-wide v6, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->fileCount:J

    iget-object v8, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->destination:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/filerequests/FileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJLjava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)V

    return-object v0
.end method

.method public withDeadline(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 314
    return-object p0
.end method

.method public withDestination(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
    .locals 2

    .prologue
    .line 295
    if-eqz p1, :cond_0

    .line 296
    const-string/jumbo v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'destination\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->destination:Ljava/lang/String;

    .line 301
    return-object p0
.end method
