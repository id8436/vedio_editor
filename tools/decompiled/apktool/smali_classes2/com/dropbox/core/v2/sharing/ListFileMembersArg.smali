.class Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
.super Ljava/lang/Object;
.source "ListFileMembersArg.java"


# instance fields
.field protected final actions:Ljava/util/List;
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

.field protected final includeInherited:Z

.field protected final limit:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 95
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x64

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;-><init>(Ljava/lang/String;Ljava/util/List;ZJ)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'file\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'file\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    const-string/jumbo v0, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'file\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    .line 63
    if-eqz p2, :cond_4

    .line 64
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 65
    if-nez v0, :cond_3

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    .line 71
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->includeInherited:Z

    .line 72
    const-wide/16 v0, 0x1

    cmp-long v0, p4, v0

    if-gez v0, :cond_5

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_5
    const-wide/16 v0, 0x12c

    cmp-long v0, p4, v0

    if-lez v0, :cond_6

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 300L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_6
    iput-wide p4, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->limit:J

    .line 79
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 282
    if-ne p1, p0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 286
    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 290
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;

    .line 291
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    .line 292
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->includeInherited:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->includeInherited:Z

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->limit:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->limit:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 298
    goto :goto_0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeInherited()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->includeInherited:Z

    return v0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 271
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->includeInherited:Z

    .line 274
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->limit:J

    .line 275
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 271
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 277
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
