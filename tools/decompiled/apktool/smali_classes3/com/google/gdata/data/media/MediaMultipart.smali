.class public Lcom/google/gdata/data/media/MediaMultipart;
.super Ljavax/mail/internet/MimeMultipart;
.source "MediaMultipart.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field protected atomPart:Lcom/google/gdata/data/media/MediaBodyPart;

.field protected mediaPart:Lcom/google/gdata/data/media/MediaBodyPart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/google/gdata/data/media/MediaMultipart;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/media/MediaMultipart;->LOGGER:Ljava/util/logging/Logger;

    .line 48
    invoke-static {}, Lcom/google/gdata/data/media/MediaMultipart;->loadMimeMappings()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/media/MediaSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 121
    const-string/jumbo v0, "related"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "entry"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v0, "media"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/media/MediaBodyPart;-><init>(Lcom/google/gdata/data/IEntry;)V

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->atomPart:Lcom/google/gdata/data/media/MediaBodyPart;

    .line 127
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->atomPart:Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/MediaMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 128
    new-instance v0, Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-direct {v0, p2}, Lcom/google/gdata/data/media/MediaBodyPart;-><init>(Lcom/google/gdata/data/media/MediaSource;)V

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->mediaPart:Lcom/google/gdata/data/media/MediaBodyPart;

    .line 129
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->mediaPart:Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/MediaMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 130
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    new-instance v0, Lcom/google/gdata/data/media/MediaStreamSource;

    invoke-direct {v0, p2, p1}, Lcom/google/gdata/data/media/MediaStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/gdata/data/media/MediaMultipart;->getCount()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 101
    new-instance v0, Ljavax/mail/MessagingException;

    const-string/jumbo v1, "Multipart must have Atom and media part"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/gdata/data/media/MediaMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    sget-object v3, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v3}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v3

    .line 106
    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/media/MediaMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    sget-object v4, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v4}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljavax/mail/MessagingException;

    const-string/jumbo v1, "No Atom MIME body part found"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/media/MediaMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/MediaBodyPart;

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->atomPart:Lcom/google/gdata/data/media/MediaBodyPart;

    .line 111
    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/gdata/data/media/MediaMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/MediaBodyPart;

    iput-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->mediaPart:Lcom/google/gdata/data/media/MediaBodyPart;

    .line 112
    return-void

    :cond_2
    move v0, v2

    .line 110
    goto :goto_0

    :cond_3
    move v2, v1

    .line 111
    goto :goto_1
.end method

.method public static loadMimeMappings()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 60
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "application/atom+xml"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string/jumbo v3, "application/rss+xml"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "application/json"

    aput-object v3, v2, v0

    .line 64
    const-string/jumbo v0, ";; x-java-content-handler=com.google.gdata.data.media.GDataContentHandler"

    .line 67
    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    .line 68
    instance-of v3, v0, Ljavax/activation/MailcapCommandMap;

    if-eqz v3, :cond_2

    .line 69
    check-cast v0, Ljavax/activation/MailcapCommandMap;

    .line 70
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 71
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljavax/activation/MailcapCommandMap;->getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v3

    .line 72
    if-eqz v3, :cond_0

    array-length v3, v3

    if-nez v3, :cond_1

    .line 73
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";; x-java-content-handler=com.google.gdata.data.media.GDataContentHandler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    .line 70
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_2
    sget-object v0, Lcom/google/gdata/data/media/MediaMultipart;->LOGGER:Ljava/util/logging/Logger;

    const-string/jumbo v1, "Unable to find MailcapCommandMap, skipping dynamic mailcap config."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 80
    :cond_3
    return-void
.end method


# virtual methods
.method public createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/media/MediaBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/gdata/data/media/MediaBodyPart;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/media/MediaBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public getAtomPart()Lcom/google/gdata/data/media/MediaBodyPart;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->atomPart:Lcom/google/gdata/data/media/MediaBodyPart;

    return-object v0
.end method

.method public getMediaPart()Lcom/google/gdata/data/media/MediaBodyPart;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/gdata/data/media/MediaMultipart;->mediaPart:Lcom/google/gdata/data/media/MediaBodyPart;

    return-object v0
.end method
