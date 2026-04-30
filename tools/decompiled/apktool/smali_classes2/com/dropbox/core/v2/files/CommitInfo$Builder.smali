.class public Lcom/dropbox/core/v2/files/CommitInfo$Builder;
.super Ljava/lang/Object;
.source "CommitInfo.java"


# instance fields
.field protected autorename:Z

.field protected clientModified:Ljava/util/Date;

.field protected mode:Lcom/dropbox/core/v2/files/WriteMode;

.field protected mute:Z

.field protected final path:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    const-string/jumbo v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->path:Ljava/lang/String;

    .line 180
    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    .line 181
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->autorename:Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->clientModified:Ljava/util/Date;

    .line 183
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->mute:Z

    .line 184
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/CommitInfo;
    .locals 6

    .prologue
    .line 282
    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->autorename:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->clientModified:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->mute:Z

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/CommitInfo;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;Z)V

    return-object v0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 1

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->autorename:Z

    .line 231
    :goto_0
    return-object p0

    .line 229
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->autorename:Z

    goto :goto_0
.end method

.method public withClientModified(Ljava/util/Date;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 1

    .prologue
    .line 247
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->clientModified:Ljava/util/Date;

    .line 248
    return-object p0
.end method

.method public withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 1

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    iput-object p1, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    .line 208
    :goto_0
    return-object p0

    .line 206
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    goto :goto_0
.end method

.method public withMute(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;
    .locals 1

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->mute:Z

    .line 272
    :goto_0
    return-object p0

    .line 270
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/CommitInfo$Builder;->mute:Z

    goto :goto_0
.end method
