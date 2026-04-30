.class public Lcom/google/gdata/util/io/base/UnicodeReader;
.super Ljava/io/Reader;
.source "UnicodeReader.java"


# static fields
.field private static final BOM_SIZE:I = 0x4


# instance fields
.field private final defaultEnc:Ljava/lang/String;

.field private final internalInputStreamReader:Ljava/io/InputStreamReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 47
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/google/gdata/util/io/base/UnicodeReader;->defaultEnc:Ljava/lang/String;

    .line 53
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 56
    new-instance v3, Ljava/io/PushbackInputStream;

    const/4 v0, 0x4

    invoke-direct {v3, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 57
    array-length v0, v2

    invoke-virtual {v3, v2, v5, v0}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v1

    .line 59
    aget-byte v0, v2, v5

    const/16 v4, -0x11

    if-ne v0, v4, :cond_1

    aget-byte v0, v2, v7

    const/16 v4, -0x45

    if-ne v0, v4, :cond_1

    aget-byte v0, v2, v9

    const/16 v4, -0x41

    if-ne v0, v4, :cond_1

    .line 61
    const-string/jumbo p2, "UTF-8"

    .line 62
    add-int/lit8 v0, v1, -0x3

    .line 82
    :goto_0
    if-lez v0, :cond_6

    .line 83
    sub-int/2addr v1, v0

    invoke-virtual {v3, v2, v1, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 89
    :cond_0
    :goto_1
    if-nez p2, :cond_7

    .line 90
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/gdata/util/io/base/UnicodeReader;->internalInputStreamReader:Ljava/io/InputStreamReader;

    .line 95
    :goto_2
    return-void

    .line 63
    :cond_1
    aget-byte v0, v2, v5

    if-ne v0, v8, :cond_2

    aget-byte v0, v2, v7

    if-ne v0, v6, :cond_2

    .line 64
    const-string/jumbo p2, "UTF-16BE"

    .line 65
    add-int/lit8 v0, v1, -0x2

    goto :goto_0

    .line 66
    :cond_2
    aget-byte v0, v2, v5

    if-ne v0, v6, :cond_3

    aget-byte v0, v2, v7

    if-ne v0, v8, :cond_3

    .line 67
    const-string/jumbo p2, "UTF-16LE"

    .line 68
    add-int/lit8 v0, v1, -0x2

    goto :goto_0

    .line 69
    :cond_3
    aget-byte v0, v2, v5

    if-nez v0, :cond_4

    aget-byte v0, v2, v7

    if-nez v0, :cond_4

    aget-byte v0, v2, v9

    if-ne v0, v8, :cond_4

    const/4 v0, 0x3

    aget-byte v0, v2, v0

    if-ne v0, v6, :cond_4

    .line 71
    const-string/jumbo p2, "UTF-32BE"

    .line 72
    add-int/lit8 v0, v1, -0x4

    goto :goto_0

    .line 73
    :cond_4
    aget-byte v0, v2, v5

    if-ne v0, v6, :cond_5

    aget-byte v0, v2, v7

    if-ne v0, v8, :cond_5

    aget-byte v0, v2, v9

    if-nez v0, :cond_5

    const/4 v0, 0x3

    aget-byte v0, v2, v0

    if-nez v0, :cond_5

    .line 75
    const-string/jumbo p2, "UTF-32LE"

    .line 76
    add-int/lit8 v0, v1, -0x4

    goto :goto_0

    :cond_5
    move v0, v1

    .line 80
    goto :goto_0

    .line 84
    :cond_6
    if-ge v0, v6, :cond_0

    .line 85
    invoke-virtual {v3, v2, v5, v5}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto :goto_1

    .line 92
    :cond_7
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/util/io/base/UnicodeReader;->internalInputStreamReader:Ljava/io/InputStreamReader;

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/util/io/base/UnicodeReader;->internalInputStreamReader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 107
    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gdata/util/io/base/UnicodeReader;->defaultEnc:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/gdata/util/io/base/UnicodeReader;->internalInputStreamReader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/gdata/util/io/base/UnicodeReader;->internalInputStreamReader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    return v0
.end method
