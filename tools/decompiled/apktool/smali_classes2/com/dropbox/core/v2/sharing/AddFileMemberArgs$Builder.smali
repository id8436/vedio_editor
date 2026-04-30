.class public Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;
.super Ljava/lang/Object;
.source "AddFileMemberArgs.java"


# instance fields
.field protected accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected addMessageAsComment:Z

.field protected customMessage:Ljava/lang/String;

.field protected final file:Ljava/lang/String;

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;"
        }
    .end annotation
.end field

.field protected quiet:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    if-nez p1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'file\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'file\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    const-string/jumbo v0, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'file\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->file:Ljava/lang/String;

    .line 214
    if-nez p2, :cond_3

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 218
    if-nez v0, :cond_4

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_5
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->members:Ljava/util/List;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->customMessage:Ljava/lang/String;

    .line 224
    iput-boolean v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->quiet:Z

    .line 225
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 226
    iput-boolean v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->addMessageAsComment:Z

    .line 227
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;
    .locals 7

    .prologue
    .line 318
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->file:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->members:Ljava/util/List;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->customMessage:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->quiet:Z

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-boolean v6, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->addMessageAsComment:Z

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/AccessLevel;Z)V

    return-object v0
.end method

.method public withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;
    .locals 1

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 286
    :goto_0
    return-object p0

    .line 284
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    goto :goto_0
.end method

.method public withAddMessageAsComment(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;
    .locals 1

    .prologue
    .line 302
    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->addMessageAsComment:Z

    .line 308
    :goto_0
    return-object p0

    .line 306
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->addMessageAsComment:Z

    goto :goto_0
.end method

.method public withCustomMessage(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->customMessage:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public withQuiet(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;
    .locals 1

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->quiet:Z

    .line 261
    :goto_0
    return-object p0

    .line 259
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;->quiet:Z

    goto :goto_0
.end method
