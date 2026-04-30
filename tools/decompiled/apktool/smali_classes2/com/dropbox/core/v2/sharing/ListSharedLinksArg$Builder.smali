.class public Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;
.super Ljava/lang/Object;
.source "ListSharedLinksArg.java"


# instance fields
.field protected cursor:Ljava/lang/String;

.field protected directOnly:Ljava/lang/Boolean;

.field protected path:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->path:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->cursor:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->directOnly:Ljava/lang/Boolean;

    .line 110
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;
    .locals 4

    .prologue
    .line 167
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->cursor:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->directOnly:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public withCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->cursor:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public withDirectOnly(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->directOnly:Ljava/lang/Boolean;

    .line 157
    return-object p0
.end method

.method public withPath(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;
    .locals 2

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    const-string/jumbo v0, "(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;->path:Ljava/lang/String;

    .line 131
    return-object p0
.end method
