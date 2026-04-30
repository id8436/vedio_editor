.class public abstract Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
.super Ljava/lang/Object;
.source "DbxDownloadStyleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private length:Ljava/lang/Long;

.field private start:Ljava/lang/Long;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    .line 65
    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->length:Ljava/lang/Long;

    .line 66
    return-void
.end method


# virtual methods
.method public download(Ljava/io/OutputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start()Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/DbxDownloader;->download(Ljava/io/OutputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getHeaders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    const-string/jumbo v0, "bytes=%d-"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->length:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->length:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_1
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v3, "Range"

    invoke-direct {v2, v3, v0}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 81
    goto :goto_0
.end method

.method public range(J)Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 142
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->length:Ljava/lang/Long;

    .line 147
    return-object p0
.end method

.method public range(JJ)Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/dropbox/core/v2/DbxDownloadStyleBuilder",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 117
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "length must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->start:Ljava/lang/Long;

    .line 121
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxDownloadStyleBuilder;->length:Ljava/lang/Long;

    .line 123
    return-object p0
.end method

.method public abstract start()Lcom/dropbox/core/DbxDownloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/DbxDownloader",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation
.end method
