.class Lcom/dropbox/core/v2/sharing/ListFoldersArgs;
.super Ljava/lang/Object;
.source "ListFoldersArgs.java"


# instance fields
.field protected final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final limit:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 64
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;-><init>(JLjava/util/List;)V

    .line 65
    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-wide p1, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->limit:J

    .line 48
    if-eqz p3, :cond_3

    .line 49
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 50
    if-nez v0, :cond_2

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    if-ne p1, p0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 194
    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 198
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;

    .line 199
    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->limit:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->limit:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    .line 200
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 204
    goto :goto_0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->limit:J

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->actions:Ljava/util/List;

    aput-object v2, v0, v1

    .line 181
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 185
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
