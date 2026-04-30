.class public Lcom/google/gdata/wireformats/output/media/MediaMultipartGenerator;
.super Ljava/lang/Object;
.source "MediaMultipartGenerator.java"

# interfaces
.implements Lcom/google/gdata/wireformats/output/OutputGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gdata/wireformats/output/OutputGenerator",
        "<",
        "Lcom/google/gdata/data/media/MediaMultipart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/media/MediaMultipart;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 56
    :try_start_0
    invoke-static {p2}, Lcom/google/gdata/data/media/GDataContentHandler;->setThreadOutputProperties(Lcom/google/gdata/wireformats/output/OutputProperties;)Lcom/google/gdata/wireformats/output/OutputProperties;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 58
    :try_start_1
    invoke-virtual {p3, p1}, Lcom/google/gdata/data/media/MediaMultipart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 72
    invoke-static {v1}, Lcom/google/gdata/data/media/GDataContentHandler;->setThreadOutputProperties(Lcom/google/gdata/wireformats/output/OutputProperties;)Lcom/google/gdata/wireformats/output/OutputProperties;

    .line 74
    return-void

    .line 59
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    .line 62
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 63
    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_0

    .line 64
    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v2}, Lcom/google/gdata/data/media/GDataContentHandler;->setThreadOutputProperties(Lcom/google/gdata/wireformats/output/OutputProperties;)Lcom/google/gdata/wireformats/output/OutputProperties;

    throw v0

    .line 68
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid multipart content"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v3, Lcom/google/gdata/util/InvalidEntryException;

    const-string/jumbo v4, "Invalid media entry"

    invoke-direct {v3, v4, v1}, Lcom/google/gdata/util/InvalidEntryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 70
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    check-cast p3, Lcom/google/gdata/data/media/MediaMultipart;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/output/media/MediaMultipartGenerator;->generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/media/MediaMultipart;)V

    return-void
.end method

.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->MEDIA_MULTIPART:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/media/MediaMultipart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Lcom/google/gdata/data/media/MediaMultipart;

    return-object v0
.end method
