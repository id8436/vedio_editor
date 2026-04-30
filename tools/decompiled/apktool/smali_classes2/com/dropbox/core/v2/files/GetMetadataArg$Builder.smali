.class public Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
.super Ljava/lang/Object;
.source "GetMetadataArg.java"


# instance fields
.field protected includeDeleted:Z

.field protected includeHasExplicitSharedMembers:Z

.field protected includeMediaInfo:Z

.field protected final path:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    const-string/jumbo v0, "(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->path:Ljava/lang/String;

    .line 150
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeMediaInfo:Z

    .line 151
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeDeleted:Z

    .line 152
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeHasExplicitSharedMembers:Z

    .line 153
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/GetMetadataArg;
    .locals 5

    .prologue
    .line 230
    new-instance v0, Lcom/dropbox/core/v2/files/GetMetadataArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->path:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeMediaInfo:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeDeleted:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeHasExplicitSharedMembers:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/files/GetMetadataArg;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 1

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeDeleted:Z

    .line 197
    :goto_0
    return-object p0

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeDeleted:Z

    goto :goto_0
.end method

.method public withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 1

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeHasExplicitSharedMembers:Z

    .line 220
    :goto_0
    return-object p0

    .line 218
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeHasExplicitSharedMembers:Z

    goto :goto_0
.end method

.method public withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 1

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeMediaInfo:Z

    .line 174
    :goto_0
    return-object p0

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->includeMediaInfo:Z

    goto :goto_0
.end method
