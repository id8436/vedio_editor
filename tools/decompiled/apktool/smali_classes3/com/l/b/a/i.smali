.class public Lcom/l/b/a/i;
.super Ljava/io/FilterInputStream;
.source "QPDecoderStream.java"


# instance fields
.field protected a:[B

.field protected b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 51
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/l/b/a/i;->a:[B

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/l/b/a/i;->b:I

    .line 52
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/l/b/a/i;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/16 v1, 0x20

    .line 67
    iget v2, p0, Lcom/l/b/a/i;->b:I

    if-lez v2, :cond_0

    .line 69
    iget v0, p0, Lcom/l/b/a/i;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/l/b/a/i;->b:I

    .line 132
    :goto_0
    return v1

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/l/b/a/i;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 75
    if-ne v2, v1, :cond_4

    .line 77
    :goto_1
    iget-object v2, p0, Lcom/l/b/a/i;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 78
    iget v2, p0, Lcom/l/b/a/i;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/l/b/a/i;->b:I

    goto :goto_1

    .line 80
    :cond_1
    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-ne v2, v0, :cond_3

    .line 83
    :cond_2
    iput v3, p0, Lcom/l/b/a/i;->b:I

    move v0, v2

    :goto_2
    move v1, v0

    .line 89
    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/l/b/a/i;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    move v0, v1

    .line 87
    goto :goto_2

    .line 91
    :cond_4
    const/16 v1, 0x3d

    if-ne v2, v1, :cond_9

    .line 93
    iget-object v1, p0, Lcom/l/b/a/i;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 95
    if-ne v1, v4, :cond_5

    .line 101
    invoke-virtual {p0}, Lcom/l/b/a/i;->read()I

    move-result v1

    goto :goto_0

    .line 102
    :cond_5
    if-ne v1, v5, :cond_7

    .line 104
    iget-object v0, p0, Lcom/l/b/a/i;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 105
    if-eq v1, v4, :cond_6

    .line 109
    iget-object v0, p0, Lcom/l/b/a/i;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 110
    :cond_6
    invoke-virtual {p0}, Lcom/l/b/a/i;->read()I

    move-result v1

    goto :goto_0

    .line 111
    :cond_7
    if-ne v1, v0, :cond_8

    move v1, v0

    .line 113
    goto :goto_0

    .line 115
    :cond_8
    iget-object v0, p0, Lcom/l/b/a/i;->a:[B

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 116
    iget-object v0, p0, Lcom/l/b/a/i;->a:[B

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/l/b/a/i;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/l/b/a/i;->a:[B

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-static {v0, v1, v3, v4}, Lcom/l/b/a/a;->a([BIII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 127
    iget-object v0, p0, Lcom/l/b/a/i;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lcom/l/b/a/i;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread([B)V

    move v1, v2

    .line 128
    goto :goto_0

    :cond_9
    move v1, v2

    .line 132
    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 151
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/l/b/a/i;->read()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 153
    if-nez v1, :cond_1

    .line 159
    :goto_1
    return v0

    .line 157
    :cond_0
    add-int v3, p2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
