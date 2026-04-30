.class public Lcom/google/gdata/data/media/MediaBodyPart;
.super Ljavax/mail/internet/MimeBodyPart;
.source "MediaBodyPart.java"


# instance fields
.field private mediaSource:Lcom/google/gdata/data/media/MediaSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/IEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 95
    const-string/jumbo v0, "application/atom+xml"

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/media/MediaBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "application/atom+xml"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/media/MediaBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/media/MediaSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/google/gdata/data/media/MediaBodyPart;->mediaSource:Lcom/google/gdata/data/media/MediaSource;

    .line 103
    const-string/jumbo v0, "Content-Type"

    invoke-interface {p1}, Lcom/google/gdata/data/media/MediaSource;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/media/MediaBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Lcom/google/gdata/data/media/MediaSource;->getEtag()Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v1, "ETag"

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/data/media/MediaBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaBodyPart;->initMediaDataHandler()V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    .line 89
    new-instance v0, Lcom/google/gdata/data/media/MediaStreamSource;

    invoke-virtual {p0}, Lcom/google/gdata/data/media/MediaBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/gdata/data/media/MediaStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaBodyPart;->mediaSource:Lcom/google/gdata/data/media/MediaSource;

    .line 90
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaBodyPart;->initMediaDataHandler()V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/InternetHeaders;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    .line 115
    invoke-virtual {p0}, Lcom/google/gdata/data/media/MediaBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/google/gdata/data/media/MediaStreamSource;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/data/media/MediaStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "ETag"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/gdata/data/media/MediaBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v1, v0}, Lcom/google/gdata/data/media/MediaStreamSource;->setEtag(Ljava/lang/String;)V

    .line 122
    :cond_0
    iput-object v1, p0, Lcom/google/gdata/data/media/MediaBodyPart;->mediaSource:Lcom/google/gdata/data/media/MediaSource;

    .line 123
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaBodyPart;->initMediaDataHandler()V

    .line 124
    return-void
.end method

.method private initMediaDataHandler()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/gdata/data/media/MediaBodyPart;->isAtomPart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/google/gdata/data/media/MediaBodyPart$MediaSourceDataHandler;

    iget-object v1, p0, Lcom/google/gdata/data/media/MediaBodyPart;->mediaSource:Lcom/google/gdata/data/media/MediaSource;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/media/MediaBodyPart$MediaSourceDataHandler;-><init>(Lcom/google/gdata/data/media/MediaSource;Lcom/google/gdata/data/media/MediaBodyPart$1;)V

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    iget-object v1, p0, Lcom/google/gdata/data/media/MediaBodyPart;->mediaSource:Lcom/google/gdata/data/media/MediaSource;

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaBodyPart;->dh:Ljavax/activation/DataHandler;

    goto :goto_0
.end method


# virtual methods
.method public getMediaSource()Lcom/google/gdata/data/media/MediaSource;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaBodyPart;->mediaSource:Lcom/google/gdata/data/media/MediaSource;

    return-object v0
.end method

.method public isAtomPart()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 147
    const-string/jumbo v0, "application/atom+xml"

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/MediaBodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
