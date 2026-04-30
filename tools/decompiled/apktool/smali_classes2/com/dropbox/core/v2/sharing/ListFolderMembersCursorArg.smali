.class Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;
.super Ljava/lang/Object;
.source "ListFolderMembersCursorArg.java"


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

.field protected final limit:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 64
    const/4 v0, 0x0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v2, v3}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;-><init>(Ljava/util/List;J)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    .line 49
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    const-wide/16 v0, 0x3e8

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_3
    iput-wide p2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->limit:J

    .line 56
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    if-ne p1, p0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 195
    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;

    .line 200
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->limit:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->limit:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 205
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
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 182
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->actions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;->limit:J

    .line 184
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 182
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 186
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
