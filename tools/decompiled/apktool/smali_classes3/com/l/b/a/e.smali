.class public Lcom/l/b/a/e;
.super Ljava/io/FilterInputStream;
.source "LineInputStream.java"


# instance fields
.field private a:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/l/b/a/e;->a:[C

    .line 51
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 65
    iget-object v5, p0, Lcom/l/b/a/e;->in:Ljava/io/InputStream;

    .line 66
    iget-object v0, p0, Lcom/l/b/a/e;->a:[C

    .line 68
    if-nez v0, :cond_0

    .line 69
    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/l/b/a/e;->a:[C

    .line 72
    :cond_0
    array-length v1, v0

    move-object v3, v0

    move v0, v1

    move v1, v2

    .line 75
    :goto_0
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v6

    if-eq v6, v7, :cond_1

    .line 76
    if-ne v6, v8, :cond_2

    .line 103
    :cond_1
    :goto_1
    if-ne v6, v7, :cond_4

    if-nez v1, :cond_4

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_2
    return-object v0

    .line 78
    :cond_2
    if-ne v6, v9, :cond_3

    .line 80
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 81
    if-ne v0, v9, :cond_7

    .line 82
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    move v4, v0

    .line 83
    :goto_3
    if-eq v4, v8, :cond_1

    .line 85
    instance-of v0, v5, Ljava/io/PushbackInputStream;

    if-nez v0, :cond_6

    .line 86
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, v5}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/l/b/a/e;->in:Ljava/io/InputStream;

    .line 87
    :goto_4
    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_1

    .line 94
    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_5

    .line 95
    add-int/lit16 v0, v1, 0x80

    new-array v4, v0, [C

    .line 96
    array-length v0, v4

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, -0x1

    .line 97
    iget-object v0, p0, Lcom/l/b/a/e;->a:[C

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v4, p0, Lcom/l/b/a/e;->a:[C

    .line 100
    :goto_5
    add-int/lit8 v0, v1, 0x1

    int-to-char v6, v6

    aput-char v6, v4, v1

    move v1, v0

    move v0, v3

    move-object v3, v4

    .line 101
    goto :goto_0

    .line 106
    :cond_4
    invoke-static {v3, v2, v1}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v4, v3

    move v3, v0

    goto :goto_5

    :cond_6
    move-object v0, v5

    goto :goto_4

    :cond_7
    move v4, v0

    goto :goto_3
.end method
