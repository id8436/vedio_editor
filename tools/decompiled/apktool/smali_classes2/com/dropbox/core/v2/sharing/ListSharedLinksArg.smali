.class Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;
.super Ljava/lang/Object;
.source "ListSharedLinksArg.java"


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final directOnly:Ljava/lang/Boolean;

.field protected final path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0, v0, v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    const-string/jumbo v0, "(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->path:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->cursor:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->directOnly:Ljava/lang/Boolean;

    .line 49
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    if-ne p1, p0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 187
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 191
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;

    .line 192
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->path:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->cursor:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->cursor:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->cursor:Ljava/lang/String;

    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->directOnly:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->directOnly:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->directOnly:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->directOnly:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->directOnly:Ljava/lang/Boolean;

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 198
    goto :goto_0
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectOnly()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->directOnly:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->path:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->cursor:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->directOnly:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 178
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
