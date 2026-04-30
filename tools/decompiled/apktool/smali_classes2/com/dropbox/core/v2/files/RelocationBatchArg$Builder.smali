.class public Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
.super Ljava/lang/Object;
.source "RelocationBatchArg.java"


# instance fields
.field protected allowOwnershipTransfer:Z

.field protected allowSharedFolder:Z

.field protected autorename:Z

.field protected final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'entries\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationPath;

    .line 157
    if-nez v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'entries\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->entries:Ljava/util/List;

    .line 162
    iput-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    .line 163
    iput-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    .line 164
    iput-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowOwnershipTransfer:Z

    .line 165
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/RelocationBatchArg;
    .locals 5

    .prologue
    .line 246
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->entries:Ljava/util/List;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowOwnershipTransfer:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;ZZZ)V

    return-object v0
.end method

.method public withAllowOwnershipTransfer(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    .locals 1

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowOwnershipTransfer:Z

    .line 236
    :goto_0
    return-object p0

    .line 234
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowOwnershipTransfer:Z

    goto :goto_0
.end method

.method public withAllowSharedFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    .locals 1

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    .line 191
    :goto_0
    return-object p0

    .line 189
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    goto :goto_0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    .locals 1

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    .line 213
    :goto_0
    return-object p0

    .line 211
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    goto :goto_0
.end method
