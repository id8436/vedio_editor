.class public Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;
.super Ljava/lang/Object;
.source "GetSharedLinkMetadataArg.java"


# instance fields
.field protected linkPassword:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'url\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->url:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->path:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->linkPassword:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;
    .locals 4

    .prologue
    .line 172
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->linkPassword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withLinkPassword(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->linkPassword:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public withPath(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;
    .locals 2

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    const-string/jumbo v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'path\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;->path:Ljava/lang/String;

    .line 149
    return-object p0
.end method
