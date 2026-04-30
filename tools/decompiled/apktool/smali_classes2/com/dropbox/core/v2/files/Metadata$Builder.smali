.class public Lcom/dropbox/core/v2/files/Metadata$Builder;
.super Ljava/lang/Object;
.source "Metadata.java"


# instance fields
.field protected final name:Ljava/lang/String;

.field protected parentSharedFolderId:Ljava/lang/String;

.field protected pathDisplay:Ljava/lang/String;

.field protected pathLower:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->name:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathLower:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathDisplay:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/Metadata;
    .locals 5

    .prologue
    .line 228
    new-instance v0, Lcom/dropbox/core/v2/files/Metadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathLower:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathDisplay:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/files/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 2

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathDisplay:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/dropbox/core/v2/files/Metadata$Builder;->pathLower:Ljava/lang/String;

    .line 176
    return-object p0
.end method
