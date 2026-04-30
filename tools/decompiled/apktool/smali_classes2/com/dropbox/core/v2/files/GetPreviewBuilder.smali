.class public Lcom/dropbox/core/v2/files/GetPreviewBuilder;
.super Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.source "GetPreviewBuilder.java"


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
    .line 36
    invoke-direct {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 41
    iput-object p2, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->path:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->rev:Ljava/lang/String;

    .line 43
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
            Lcom/dropbox/core/v2/files/PreviewErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->rev:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/PreviewArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->_client:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getPreview(Lcom/dropbox/core/v2/files/PreviewArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public withRev(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetPreviewBuilder;
    .locals 2

    .prologue
    .line 58
    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' is shorter than 9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    const-string/jumbo v0, "[0-9a-f]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;->rev:Ljava/lang/String;

    .line 67
    return-object p0
.end method
