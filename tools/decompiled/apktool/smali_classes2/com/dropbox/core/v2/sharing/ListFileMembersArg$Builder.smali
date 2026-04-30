.class public Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
.super Ljava/lang/Object;
.source "ListFileMembersArg.java"


# instance fields
.field protected actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final file:Ljava/lang/String;

.field protected includeInherited:Z

.field protected limit:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'file\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'file\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    const-string/jumbo v0, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'file\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->file:Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->actions:Ljava/util/List;

    .line 177
    iput-boolean v1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->includeInherited:Z

    .line 178
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->limit:J

    .line 179
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
    .locals 6

    .prologue
    .line 265
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->file:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->actions:Ljava/util/List;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->includeInherited:Z

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->limit:J

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;-><init>(Ljava/lang/String;Ljava/util/List;ZJ)V

    return-object v0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;"
        }
    .end annotation

    .prologue
    .line 193
    if-eqz p1, :cond_1

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 195
    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->actions:Ljava/util/List;

    .line 201
    return-object p0
.end method

.method public withIncludeInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
    .locals 1

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->includeInherited:Z

    .line 223
    :goto_0
    return-object p0

    .line 221
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->includeInherited:Z

    goto :goto_0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
    .locals 4

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 300L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    if-eqz p1, :cond_2

    .line 250
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->limit:J

    .line 255
    :goto_0
    return-object p0

    .line 253
    :cond_2
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->limit:J

    goto :goto_0
.end method
