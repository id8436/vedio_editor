.class public Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;
.super Ljava/lang/Object;
.source "ThumbnailArg.java"


# instance fields
.field protected format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

.field protected final path:Ljava/lang/String;

.field protected size:Lcom/dropbox/core/v2/files/ThumbnailSize;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'path\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    const-string/jumbo v0, "(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->path:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailFormat;->JPEG:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    .line 143
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    .line 144
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/ThumbnailArg;
    .locals 4

    .prologue
    .line 205
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/files/ThumbnailArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/dropbox/core/v2/files/ThumbnailSize;)V

    return-object v0
.end method

.method public withFormat(Lcom/dropbox/core/v2/files/ThumbnailFormat;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;
    .locals 1

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    .line 170
    :goto_0
    return-object p0

    .line 168
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailFormat;->JPEG:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    goto :goto_0
.end method

.method public withSize(Lcom/dropbox/core/v2/files/ThumbnailSize;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;
    .locals 1

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    .line 195
    :goto_0
    return-object p0

    .line 193
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    goto :goto_0
.end method
