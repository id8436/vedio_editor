.class public Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
.super Ljava/lang/Object;
.source "FolderSharingInfo.java"


# instance fields
.field protected noAccess:Z

.field protected parentSharedFolderId:Ljava/lang/String;

.field protected final readOnly:Z

.field protected sharedFolderId:Ljava/lang/String;

.field protected traverseOnly:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->readOnly:Z

    .line 161
    iput-object v1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->sharedFolderId:Ljava/lang/String;

    .line 163
    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->traverseOnly:Z

    .line 164
    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->noAccess:Z

    .line 165
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/FolderSharingInfo;
    .locals 6

    .prologue
    .line 262
    new-instance v0, Lcom/dropbox/core/v2/files/FolderSharingInfo;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->readOnly:Z

    iget-object v2, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->sharedFolderId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->traverseOnly:Z

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->noAccess:Z

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/FolderSharingInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public withNoAccess(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
    .locals 1

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->noAccess:Z

    .line 252
    :goto_0
    return-object p0

    .line 250
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->noAccess:Z

    goto :goto_0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
    .locals 2

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public withSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
    .locals 2

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->sharedFolderId:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public withTraverseOnly(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;
    .locals 1

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->traverseOnly:Z

    .line 231
    :goto_0
    return-object p0

    .line 229
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/FolderSharingInfo$Builder;->traverseOnly:Z

    goto :goto_0
.end method
