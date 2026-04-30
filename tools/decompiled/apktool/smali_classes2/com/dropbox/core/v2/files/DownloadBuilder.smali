.class public Lcom/dropbox/core/v2/files/DownloadBuilder;
.super Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.source "DownloadBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder",
        "<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private final _client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field private final path:Ljava/lang/String;

.field private rev:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/DownloadBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 40
    iput-object p2, p0, Lcom/dropbox/core/v2/files/DownloadBuilder;->path:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/DownloadBuilder;->rev:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/DbxDownloader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/dropbox/core/v2/files/DownloadArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DownloadBuilder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DownloadBuilder;->rev:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/DownloadArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/dropbox/core/v2/files/DownloadBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/DownloadBuilder;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Lcom/dropbox/core/v2/files/DownloadArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public withRev(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DownloadBuilder;
    .locals 2

    .prologue
    .line 57
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' is shorter than 9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const-string/jumbo v0, "[0-9a-f]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/DownloadBuilder;->rev:Ljava/lang/String;

    .line 66
    return-object p0
.end method
