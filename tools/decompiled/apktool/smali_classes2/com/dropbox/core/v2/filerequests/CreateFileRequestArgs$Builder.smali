.class public Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;
.super Ljava/lang/Object;
.source "CreateFileRequestArgs.java"


# instance fields
.field protected deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

.field protected final destination:Ljava/lang/String;

.field protected open:Z

.field protected final title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'title\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'title\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->title:Ljava/lang/String;

    .line 168
    if-nez p2, :cond_2

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'destination\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_2
    const-string/jumbo v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'destination\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->destination:Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 176
    iput-boolean v1, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->open:Z

    .line 177
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;
    .locals 5

    .prologue
    .line 222
    new-instance v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->destination:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->open:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;Z)V

    return-object v0
.end method

.method public withDeadline(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    .line 189
    return-object p0
.end method

.method public withOpen(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;
    .locals 1

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->open:Z

    .line 212
    :goto_0
    return-object p0

    .line 210
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;->open:Z

    goto :goto_0
.end method
