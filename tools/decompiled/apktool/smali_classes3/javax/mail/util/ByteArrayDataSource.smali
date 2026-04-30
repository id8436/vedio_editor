.class public Ljavax/mail/util/ByteArrayDataSource;
.super Ljava/lang/Object;
.source "ByteArrayDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field private data:[B

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 63
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 64
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 66
    iput-object p2, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    .line 96
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, p2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v2, "charset"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_0
    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 103
    iput-object p2, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 104
    return-void

    .line 98
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 78
    iput-object p2, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "no data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "cannot do this"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 157
    return-void
.end method
