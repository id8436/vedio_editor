.class public Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;
.super Ljava/lang/Object;
.source "UpdateFileRequestArgs.java"


# instance fields
.field protected deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

.field protected destination:Ljava/lang/String;

.field protected final id:Ljava/lang/String;

.field protected open:Ljava/lang/Boolean;

.field protected title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'id\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    const-string/jumbo v0, "[-_0-9a-zA-Z]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->id:Ljava/lang/String;

    .line 185
    iput-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->title:Ljava/lang/String;

    .line 186
    iput-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->destination:Ljava/lang/String;

    .line 187
    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    iput-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    .line 188
    iput-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->open:Ljava/lang/Boolean;

    .line 189
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;
    .locals 6

    .prologue
    .line 279
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->destination:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    iget-object v5, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->open:Ljava/lang/Boolean;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public withDeadline(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;
    .locals 1

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    .line 257
    :goto_0
    return-object p0

    .line 255
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    iput-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    goto :goto_0
.end method

.method public withDestination(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;
    .locals 2

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    const-string/jumbo v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'destination\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->destination:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->open:Ljava/lang/Boolean;

    .line 269
    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;
    .locals 2

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'title\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;->title:Ljava/lang/String;

    .line 209
    return-object p0
.end method
