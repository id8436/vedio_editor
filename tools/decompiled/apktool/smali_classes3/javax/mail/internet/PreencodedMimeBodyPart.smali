.class public Ljavax/mail/internet/PreencodedMimeBodyPart;
.super Ljavax/mail/internet/MimeBodyPart;
.source "PreencodedMimeBodyPart.java"


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 59
    iput-object p1, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected updateHeaders()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    .line 109
    iget-object v0, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    invoke-static {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 83
    .line 84
    instance-of v0, p1, Lcom/l/b/a/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/l/b/a/f;

    move-object v1, v0

    .line 91
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/internet/PreencodedMimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v2

    .line 92
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/l/b/a/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_0
    new-instance v0, Lcom/l/b/a/f;

    invoke-direct {v0, p1}, Lcom/l/b/a/f;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v1}, Lcom/l/b/a/f;->a()V

    .line 99
    invoke-virtual {p0}, Ljavax/mail/internet/PreencodedMimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V

    .line 100
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 101
    return-void
.end method
