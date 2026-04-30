.class public Lcom/dropbox/core/v2/files/RelocationArg$Builder;
.super Ljava/lang/Object;
.source "RelocationArg.java"


# instance fields
.field protected allowOwnershipTransfer:Z

.field protected allowSharedFolder:Z

.field protected autorename:Z

.field protected final fromPath:Ljava/lang/String;

.field protected final toPath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'fromPath\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    const-string/jumbo v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'fromPath\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->fromPath:Ljava/lang/String;

    .line 169
    if-nez p2, :cond_2

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'toPath\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_2
    const-string/jumbo v0, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'toPath\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->toPath:Ljava/lang/String;

    .line 176
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowSharedFolder:Z

    .line 177
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->autorename:Z

    .line 178
    iput-boolean v1, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowOwnershipTransfer:Z

    .line 179
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/RelocationArg;
    .locals 6

    .prologue
    .line 260
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->fromPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->toPath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowSharedFolder:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->autorename:Z

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowOwnershipTransfer:Z

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public withAllowOwnershipTransfer(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    .locals 1

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowOwnershipTransfer:Z

    .line 250
    :goto_0
    return-object p0

    .line 248
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowOwnershipTransfer:Z

    goto :goto_0
.end method

.method public withAllowSharedFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    .locals 1

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowSharedFolder:Z

    .line 205
    :goto_0
    return-object p0

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->allowSharedFolder:Z

    goto :goto_0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    .locals 1

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->autorename:Z

    .line 227
    :goto_0
    return-object p0

    .line 225
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;->autorename:Z

    goto :goto_0
.end method
