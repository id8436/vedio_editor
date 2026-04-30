.class public Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;
.super Ljava/lang/Object;
.source "NamespaceRelativePathLogInfo.java"


# instance fields
.field protected nsId:Ljava/lang/String;

.field protected relativePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->nsId:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->relativePath:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->nsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->relativePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withNsId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;
    .locals 2

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'nsId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->nsId:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public withRelativePath(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;
    .locals 2

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    const-string/jumbo v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'relativePath\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;->relativePath:Ljava/lang/String;

    .line 147
    return-object p0
.end method
