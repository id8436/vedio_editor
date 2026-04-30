.class public Lcom/l/b/a/l;
.super Ljava/io/FilterOutputStream;
.source "UUEncoderStream.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field private c:[B

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "encoder.buf"

    const/16 v1, 0x284

    invoke-direct {p0, p1, v0, v1}, Lcom/l/b/a/l;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x284

    invoke-direct {p0, p1, p2, v0}, Lcom/l/b/a/l;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    iput v0, p0, Lcom/l/b/a/l;->d:I

    .line 44
    iput-boolean v0, p0, Lcom/l/b/a/l;->e:Z

    .line 74
    iput-object p2, p0, Lcom/l/b/a/l;->a:Ljava/lang/String;

    .line 75
    iput p3, p0, Lcom/l/b/a/l;->b:I

    .line 76
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/l/b/a/l;->c:[B

    .line 77
    return-void
.end method

.method private a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/l/b/a/l;->e:Z

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/l/b/a/l;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 131
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "begin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/l/b/a/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/l/b/a/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/l/b/a/l;->e:Z

    .line 135
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/l/b/a/l;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    const-string/jumbo v1, " \nend"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 145
    return-void
.end method

.method private c()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 159
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/l/b/a/l;->out:Ljava/io/OutputStream;

    iget v2, p0, Lcom/l/b/a/l;->d:I

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 164
    :goto_0
    iget v1, p0, Lcom/l/b/a/l;->d:I

    if-ge v0, v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/l/b/a/l;->c:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v4, v1, v0

    .line 166
    iget v0, p0, Lcom/l/b/a/l;->d:I

    if-ge v2, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/l/b/a/l;->c:[B

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    .line 168
    iget v0, p0, Lcom/l/b/a/l;->d:I

    if-ge v1, v0, :cond_0

    .line 169
    iget-object v5, p0, Lcom/l/b/a/l;->c:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v5, v1

    .line 178
    :goto_1
    ushr-int/lit8 v5, v4, 0x2

    and-int/lit8 v5, v5, 0x3f

    .line 179
    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x30

    ushr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    .line 180
    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3c

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v2, v6

    .line 181
    and-int/lit8 v1, v1, 0x3f

    .line 182
    iget-object v6, p0, Lcom/l/b/a/l;->out:Ljava/io/OutputStream;

    add-int/lit8 v5, v5, 0x20

    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write(I)V

    .line 183
    iget-object v5, p0, Lcom/l/b/a/l;->out:Ljava/io/OutputStream;

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write(I)V

    .line 184
    iget-object v4, p0, Lcom/l/b/a/l;->out:Ljava/io/OutputStream;

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 185
    iget-object v2, p0, Lcom/l/b/a/l;->out:Ljava/io/OutputStream;

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    move v1, v3

    .line 172
    goto :goto_1

    :cond_1
    move v0, v2

    move v1, v3

    move v2, v3

    .line 175
    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/l/b/a/l;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 189
    return-void
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
    .line 121
    invoke-virtual {p0}, Lcom/l/b/a/l;->flush()V

    .line 122
    iget-object v0, p0, Lcom/l/b/a/l;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 123
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
    .line 112
    iget v0, p0, Lcom/l/b/a/l;->d:I

    if-lez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/l/b/a/l;->a()V

    .line 114
    invoke-direct {p0}, Lcom/l/b/a/l;->c()V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/l/b/a/l;->b()V

    .line 117
    iget-object v0, p0, Lcom/l/b/a/l;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 118
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
    .line 103
    iget-object v0, p0, Lcom/l/b/a/l;->c:[B

    iget v1, p0, Lcom/l/b/a/l;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/l/b/a/l;->d:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 104
    iget v0, p0, Lcom/l/b/a/l;->d:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/l/b/a/l;->a()V

    .line 106
    invoke-direct {p0}, Lcom/l/b/a/l;->c()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/l/b/a/l;->d:I

    .line 109
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
    .line 95
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/l/b/a/l;->write([BII)V

    .line 96
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 91
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/l/b/a/l;->write(I)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method
