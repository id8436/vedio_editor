.class public Lcom/google/gdata/wireformats/input/media/MediaMultipartParser;
.super Lcom/google/gdata/wireformats/input/AbstractParser;
.source "MediaMultipartParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/input/AbstractParser",
        "<",
        "Lcom/google/gdata/data/media/MediaMultipart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->MEDIA_MULTIPART:Lcom/google/gdata/wireformats/AltFormat;

    const-class v1, Lcom/google/gdata/data/media/MediaMultipart;

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/wireformats/input/AbstractParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected createMultipart(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;)Lcom/google/gdata/data/media/MediaMultipart;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/google/gdata/data/media/MediaMultipart;

    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/media/MediaMultipart;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/media/MediaMultipart;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/google/gdata/data/media/MediaMultipart;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 66
    const-class v0, Lcom/google/gdata/data/media/MediaMultipart;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Result class must extend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/google/gdata/data/media/MediaMultipart;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 70
    invoke-virtual {p1}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "Parse source must be stream-based"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v1, 0x0

    .line 76
    :try_start_0
    invoke-static {p2}, Lcom/google/gdata/data/media/GDataContentHandler;->setThreadInputProperties(Lcom/google/gdata/wireformats/input/InputProperties;)Lcom/google/gdata/wireformats/input/InputProperties;

    move-result-object v1

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/wireformats/input/media/MediaMultipartParser;->createMultipart(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;)Lcom/google/gdata/data/media/MediaMultipart;

    move-result-object v0

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/MediaMultipart;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {v1}, Lcom/google/gdata/data/media/GDataContentHandler;->setThreadInputProperties(Lcom/google/gdata/wireformats/input/InputProperties;)Lcom/google/gdata/wireformats/input/InputProperties;

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    :try_start_1
    new-instance v2, Lcom/google/gdata/util/InvalidEntryException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/gdata/util/InvalidEntryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/gdata/data/media/GDataContentHandler;->setThreadInputProperties(Lcom/google/gdata/wireformats/input/InputProperties;)Lcom/google/gdata/wireformats/input/InputProperties;

    throw v0
.end method

.method public bridge synthetic parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/media/MediaMultipartParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/media/MediaMultipart;

    move-result-object v0

    return-object v0
.end method
