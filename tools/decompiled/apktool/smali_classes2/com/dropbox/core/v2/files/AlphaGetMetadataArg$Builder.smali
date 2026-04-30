.class public Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;
.super Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
.source "AlphaGetMetadataArg.java"


# instance fields
.field protected includePropertyTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;-><init>(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->includePropertyTemplates:Ljava/util/List;

    .line 158
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;
    .locals 6

    .prologue
    .line 250
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->path:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->includeMediaInfo:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->includeDeleted:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->includeHasExplicitSharedMembers:Z

    iget-object v5, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->includePropertyTemplates:Ljava/util/List;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;-><init>(Ljava/lang/String;ZZZLjava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/files/GetMetadataArg;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->build()Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;

    move-result-object v0

    return-object v0
.end method

.method public withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;
    .locals 0

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    .line 222
    return-object p0
.end method

.method public bridge synthetic withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->withIncludeDeleted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;
    .locals 0

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    .line 240
    return-object p0
.end method

.method public bridge synthetic withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->withIncludeHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;
    .locals 0

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;->withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    .line 204
    return-object p0
.end method

.method public bridge synthetic withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->withIncludeMediaInfo(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIncludePropertyTemplates(Ljava/util/List;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;"
        }
    .end annotation

    .prologue
    .line 173
    if-eqz p1, :cond_3

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    if-nez v0, :cond_1

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'includePropertyTemplates\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stringan item in list \'includePropertyTemplates\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_2
    const-string/jumbo v2, "(/|ptid:).*"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stringan item in list \'includePropertyTemplates\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_3
    iput-object p1, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;->includePropertyTemplates:Ljava/util/List;

    .line 187
    return-object p0
.end method
