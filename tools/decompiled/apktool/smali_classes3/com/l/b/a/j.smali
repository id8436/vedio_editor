.class public Lcom/l/b/a/j;
.super Ljava/io/FilterOutputStream;
.source "QPEncoderStream.java"


# static fields
.field private static final e:[C


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/l/b/a/j;->e:[C

    return-void

    :array_0
    .array-data 2
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/l/b/a/j;-><init>(Ljava/io/OutputStream;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    iput v0, p0, Lcom/l/b/a/j;->a:I

    .line 44
    iput-boolean v0, p0, Lcom/l/b/a/j;->c:Z

    .line 45
    iput-boolean v0, p0, Lcom/l/b/a/j;->d:Z

    .line 58
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/l/b/a/j;->b:I

    .line 59
    return-void
.end method

.method private a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 152
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/l/b/a/j;->a:I

    .line 154
    return-void
.end method


# virtual methods
.method protected a(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/16 v2, 0x3d

    .line 163
    if-eqz p2, :cond_1

    .line 164
    iget v0, p0, Lcom/l/b/a/j;->a:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/l/b/a/j;->a:I

    iget v1, p0, Lcom/l/b/a/j;->b:I

    if-le v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 166
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 167
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 168
    const/4 v0, 0x3

    iput v0, p0, Lcom/l/b/a/j;->a:I

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 171
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/l/b/a/j;->e:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 172
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/l/b/a/j;->e:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 182
    :goto_0
    return-void

    .line 174
    :cond_1
    iget v0, p0, Lcom/l/b/a/j;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/l/b/a/j;->a:I

    iget v1, p0, Lcom/l/b/a/j;->b:I

    if-le v0, v1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 176
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 177
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcom/l/b/a/j;->a:I

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 148
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
    .line 139
    iget-object v0, p0, Lcom/l/b/a/j;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 140
    return-void
.end method

.method public write(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    and-int/lit16 v0, p1, 0xff

    .line 101
    iget-boolean v1, p0, Lcom/l/b/a/j;->c:Z

    if-eqz v1, :cond_1

    .line 102
    if-eq v0, v6, :cond_0

    if-ne v0, v5, :cond_2

    .line 104
    :cond_0
    invoke-virtual {p0, v4, v3}, Lcom/l/b/a/j;->a(IZ)V

    .line 107
    :goto_0
    iput-boolean v2, p0, Lcom/l/b/a/j;->c:Z

    .line 110
    :cond_1
    if-ne v0, v6, :cond_3

    .line 111
    iput-boolean v3, p0, Lcom/l/b/a/j;->d:Z

    .line 112
    invoke-direct {p0}, Lcom/l/b/a/j;->a()V

    .line 131
    :goto_1
    return-void

    .line 106
    :cond_2
    invoke-virtual {p0, v4, v2}, Lcom/l/b/a/j;->a(IZ)V

    goto :goto_0

    .line 114
    :cond_3
    if-ne v0, v5, :cond_5

    .line 115
    iget-boolean v0, p0, Lcom/l/b/a/j;->d:Z

    if-eqz v0, :cond_4

    .line 129
    :goto_2
    iput-boolean v2, p0, Lcom/l/b/a/j;->d:Z

    goto :goto_1

    .line 120
    :cond_4
    invoke-direct {p0}, Lcom/l/b/a/j;->a()V

    goto :goto_2

    .line 121
    :cond_5
    if-ne v0, v4, :cond_6

    .line 122
    iput-boolean v3, p0, Lcom/l/b/a/j;->c:Z

    goto :goto_2

    .line 123
    :cond_6
    if-lt v0, v4, :cond_7

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_7

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_8

    .line 125
    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/l/b/a/j;->a(IZ)V

    goto :goto_2

    .line 127
    :cond_8
    invoke-virtual {p0, v0, v2}, Lcom/l/b/a/j;->a(IZ)V

    goto :goto_2
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/l/b/a/j;->write([BII)V

    .line 92
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
    .line 81
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 82
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/l/b/a/j;->write(I)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method
