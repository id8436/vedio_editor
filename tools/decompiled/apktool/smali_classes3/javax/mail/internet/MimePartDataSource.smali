.class public Ljavax/mail/internet/MimePartDataSource;
.super Ljava/lang/Object;
.source "MimePartDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;
.implements Ljavax/mail/MessageAware;


# static fields
.field private static ignoreMultipartEncoding:Z


# instance fields
.field private context:Ljavax/mail/MessageContext;

.field protected part:Ljavax/mail/internet/MimePart;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 54
    sput-boolean v0, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z

    .line 58
    :try_start_0
    const-string/jumbo v1, "mail.mime.ignoremultipartencoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    sput-boolean v0, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Ljavax/mail/internet/MimePart;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    .line 71
    return-void
.end method

.method private static restrictEncoding(Ljava/lang/String;Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 117
    sget-boolean v0, Ljavax/mail/internet/MimePartDataSource;->ignoreMultipartEncoding:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object p0

    .line 120
    :cond_1
    const-string/jumbo v0, "7bit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "8bit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "binary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, "multipart/*"

    invoke-virtual {v1, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "message/*"

    invoke-virtual {v1, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-interface {v0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    .line 100
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-interface {v1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-static {v1, v2}, Ljavax/mail/internet/MimePartDataSource;->restrictEncoding(Ljava/lang/String;Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    invoke-static {v0, v1}, Ljavax/mail/internet/MimeUtility;->decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 104
    :cond_0
    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v0, v0, Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_2
    new-instance v0, Ljavax/mail/MessagingException;

    const-string/jumbo v1, "Unknown part"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized getMessageContext()Ljavax/mail/MessageContext;
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljavax/mail/MessageContext;

    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-direct {v0, v1}, Ljavax/mail/MessageContext;-><init>(Ljavax/mail/Part;)V

    iput-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    .line 190
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 180
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/net/UnknownServiceException;

    invoke-direct {v0}, Ljava/net/UnknownServiceException;-><init>()V

    throw v0
.end method
