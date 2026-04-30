.class public Lcom/l/b/a/c;
.super Ljava/io/FilterOutputStream;
.source "BASE64EncoderStream.java"


# static fields
.field private static g:[B

.field private static final h:[C


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/l/b/a/c;->g:[B

    .line 163
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/l/b/a/c;->h:[C

    return-void

    .line 50
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 163
    nop

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/l/b/a/c;-><init>(Ljava/io/OutputStream;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    iput v0, p0, Lcom/l/b/a/c;->b:I

    .line 45
    iput v0, p0, Lcom/l/b/a/c;->c:I

    .line 48
    iput-boolean v0, p0, Lcom/l/b/a/c;->f:Z

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/l/b/a/c;->a:[B

    .line 64
    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/l/b/a/c;->f:Z

    .line 66
    const/16 p2, 0x4c

    .line 68
    :cond_1
    div-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/l/b/a/c;->d:I

    .line 69
    div-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/l/b/a/c;->e:I

    .line 70
    return-void
.end method

.method private a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 177
    iget v0, p0, Lcom/l/b/a/c;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/l/b/a/c;->d:I

    if-le v0, v1, :cond_1

    .line 178
    iget-boolean v0, p0, Lcom/l/b/a/c;->f:Z

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/l/b/a/c;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/l/b/a/c;->g:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 180
    :cond_0
    iput v4, p0, Lcom/l/b/a/c;->c:I

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/l/b/a/c;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/l/b/a/c;->a:[B

    iget v2, p0, Lcom/l/b/a/c;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/l/b/a/c;->a([BII[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 184
    iget v0, p0, Lcom/l/b/a/c;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/l/b/a/c;->c:I

    .line 185
    return-void
.end method

.method private static a([BII[B)[B
    .locals 6

    .prologue
    const/16 v5, 0x3d

    .line 206
    if-nez p3, :cond_0

    .line 207
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array p3, v0, [B

    .line 210
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-lt p2, v1, :cond_1

    .line 211
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    .line 212
    shl-int/lit8 v2, v2, 0x8

    .line 213
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 214
    shl-int/lit8 v1, v1, 0x8

    .line 215
    add-int/lit8 p1, v3, 0x1

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 216
    add-int/lit8 v2, v0, 0x3

    sget-object v3, Lcom/l/b/a/c;->h:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 217
    shr-int/lit8 v1, v1, 0x6

    .line 218
    add-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/l/b/a/c;->h:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 219
    shr-int/lit8 v1, v1, 0x6

    .line 220
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/l/b/a/c;->h:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 221
    shr-int/lit8 v1, v1, 0x6

    .line 222
    add-int/lit8 v2, v0, 0x0

    sget-object v3, Lcom/l/b/a/c;->h:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v3, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    .line 210
    add-int/lit8 p2, p2, -0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 225
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 226
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 227
    shl-int/lit8 v1, v1, 0x4

    .line 228
    add-int/lit8 v2, v0, 0x3

    aput-byte v5, p3, v2

    .line 229
    add-int/lit8 v2, v0, 0x2

    aput-byte v5, p3, v2

    .line 230
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/l/b/a/c;->h:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 231
    shr-int/lit8 v1, v1, 0x6

    .line 232
    add-int/lit8 v0, v0, 0x0

    sget-object v2, Lcom/l/b/a/c;->h:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v2, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 245
    :cond_2
    :goto_1
    return-object p3

    .line 233
    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 234
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    .line 235
    shl-int/lit8 v2, v2, 0x8

    .line 236
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 237
    shl-int/lit8 v1, v1, 0x2

    .line 238
    add-int/lit8 v2, v0, 0x3

    aput-byte v5, p3, v2

    .line 239
    add-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/l/b/a/c;->h:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 240
    shr-int/lit8 v1, v1, 0x6

    .line 241
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/l/b/a/c;->h:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 242
    shr-int/lit8 v1, v1, 0x6

    .line 243
    add-int/lit8 v0, v0, 0x0

    sget-object v2, Lcom/l/b/a/c;->h:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v2, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    goto :goto_1
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
    .line 158
    invoke-virtual {p0}, Lcom/l/b/a/c;->flush()V

    .line 159
    iget-object v0, p0, Lcom/l/b/a/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 160
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget v0, p0, Lcom/l/b/a/c;->b:I

    if-lez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/l/b/a/c;->a()V

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/l/b/a/c;->b:I

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/l/b/a/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 151
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/l/b/a/c;->a:[B

    iget v1, p0, Lcom/l/b/a/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/l/b/a/c;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 134
    iget v0, p0, Lcom/l/b/a/c;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/l/b/a/c;->a()V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/l/b/a/c;->b:I

    .line 138
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/l/b/a/c;->write([BII)V

    .line 125
    return-void
.end method

.method public write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    :goto_0
    iget v0, p0, Lcom/l/b/a/c;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/l/b/a/c;->c:I

    if-eqz v0, :cond_1

    :cond_0
    if-lez p3, :cond_1

    .line 96
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/l/b/a/c;->write(I)V

    .line 97
    add-int/lit8 p3, p3, -0x1

    move p2, v0

    .line 98
    goto :goto_0

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/l/b/a/c;->f:Z

    if-eqz v0, :cond_2

    .line 104
    iget v0, p0, Lcom/l/b/a/c;->d:I

    new-array v0, v0, [B

    .line 110
    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/l/b/a/c;->e:I

    add-int/2addr v2, v1

    if-ge v2, p3, :cond_3

    .line 111
    iget-object v2, p0, Lcom/l/b/a/c;->out:Ljava/io/OutputStream;

    add-int v3, p2, v1

    iget v4, p0, Lcom/l/b/a/c;->e:I

    invoke-static {p1, v3, v4, v0}, Lcom/l/b/a/c;->a([BII[B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 110
    iget v2, p0, Lcom/l/b/a/c;->e:I

    add-int/2addr v1, v2

    goto :goto_2

    .line 106
    :cond_2
    iget v0, p0, Lcom/l/b/a/c;->d:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 107
    iget v1, p0, Lcom/l/b/a/c;->d:I

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 108
    iget v1, p0, Lcom/l/b/a/c;->d:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    goto :goto_1

    .line 114
    :cond_3
    :goto_3
    if-ge v1, p3, :cond_4

    .line 115
    add-int v0, p2, v1

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/l/b/a/c;->write(I)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 116
    :cond_4
    return-void
.end method
