.class public Lcom/l/b/a/k;
.super Ljava/io/FilterInputStream;
.source "UUDecoderStream.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/l/b/a/e;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    iput v0, p0, Lcom/l/b/a/k;->d:I

    .line 48
    iput v0, p0, Lcom/l/b/a/k;->e:I

    .line 49
    iput-boolean v0, p0, Lcom/l/b/a/k;->f:Z

    .line 50
    iput-boolean v0, p0, Lcom/l/b/a/k;->g:Z

    .line 59
    new-instance v0, Lcom/l/b/a/e;

    invoke-direct {v0, p1}, Lcom/l/b/a/e;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/l/b/a/k;->h:Lcom/l/b/a/e;

    .line 60
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/l/b/a/k;->c:[B

    .line 61
    return-void
.end method

.method private a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/l/b/a/k;->f:Z

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/l/b/a/k;->h:Lcom/l/b/a/e;

    invoke-virtual {v0}, Lcom/l/b/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 147
    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "UUDecoder error: No Begin"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    const-string/jumbo v3, "begin"

    const/4 v5, 0x5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const/4 v2, 0x6

    const/16 v3, 0x9

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/l/b/a/k;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/l/b/a/k;->a:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/l/b/a/k;->f:Z

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "UUDecoder error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    iget-boolean v0, p0, Lcom/l/b/a/k;->g:Z

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return v2

    .line 166
    :cond_0
    iput v2, p0, Lcom/l/b/a/k;->d:I

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/l/b/a/k;->h:Lcom/l/b/a/e;

    invoke-virtual {v0}, Lcom/l/b/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 176
    if-nez v0, :cond_2

    .line 177
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Missing End"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2
    const-string/jumbo v3, "end"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    iput-boolean v1, p0, Lcom/l/b/a/k;->g:Z

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 184
    const/16 v4, 0x20

    if-ge v3, v4, :cond_4

    .line 185
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Buffer format error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_4
    add-int/lit8 v3, v3, -0x20

    and-int/lit8 v6, v3, 0x3f

    .line 195
    if-nez v6, :cond_7

    .line 196
    iget-object v0, p0, Lcom/l/b/a/k;->h:Lcom/l/b/a/e;

    invoke-virtual {v0}, Lcom/l/b/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_5

    const-string/jumbo v3, "end"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 198
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Missing End"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_6
    iput-boolean v1, p0, Lcom/l/b/a/k;->g:Z

    goto :goto_0

    .line 203
    :cond_7
    mul-int/lit8 v2, v6, 0x8

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-ge v3, v2, :cond_8

    .line 206
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Short buffer error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v2, v1

    .line 216
    :goto_1
    iget v3, p0, Lcom/l/b/a/k;->d:I

    if-ge v3, v6, :cond_9

    .line 218
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v4, v2

    .line 219
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x20

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    .line 220
    iget-object v5, p0, Lcom/l/b/a/k;->c:[B

    iget v7, p0, Lcom/l/b/a/k;->d:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/l/b/a/k;->d:I

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v4, v4, 0xfc

    ushr-int/lit8 v8, v3, 0x4

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v5, v7

    .line 222
    iget v4, p0, Lcom/l/b/a/k;->d:I

    if-ge v4, v6, :cond_b

    .line 224
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x20

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    .line 225
    iget-object v5, p0, Lcom/l/b/a/k;->c:[B

    iget v7, p0, Lcom/l/b/a/k;->d:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/l/b/a/k;->d:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v8, v2, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v5, v7

    move v3, v4

    move v4, v2

    .line 229
    :goto_2
    iget v2, p0, Lcom/l/b/a/k;->d:I

    if-ge v2, v6, :cond_a

    .line 231
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x20

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    .line 232
    iget-object v5, p0, Lcom/l/b/a/k;->c:[B

    iget v7, p0, Lcom/l/b/a/k;->d:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/l/b/a/k;->d:I

    shl-int/lit8 v4, v4, 0x6

    and-int/lit16 v4, v4, 0xc0

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v5, v7

    goto :goto_1

    :cond_9
    move v2, v1

    .line 235
    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto :goto_1

    :cond_b
    move v4, v3

    move v3, v2

    goto :goto_2
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/l/b/a/k;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/l/b/a/k;->d:I

    iget v2, p0, Lcom/l/b/a/k;->e:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget v0, p0, Lcom/l/b/a/k;->e:I

    iget v1, p0, Lcom/l/b/a/k;->d:I

    if-lt v0, v1, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/l/b/a/k;->a()V

    .line 80
    invoke-direct {p0}, Lcom/l/b/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, -0x1

    .line 84
    :goto_0
    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/l/b/a/k;->e:I

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/l/b/a/k;->c:[B

    iget v1, p0, Lcom/l/b/a/k;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/l/b/a/k;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

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

    .line 89
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/l/b/a/k;->read()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 91
    if-nez v1, :cond_1

    .line 97
    :goto_1
    return v0

    .line 95
    :cond_0
    add-int v3, p2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
