.class public abstract Ljavax/servlet/ServletInputStream;
.super Ljava/io/InputStream;
.source "ServletInputStream.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public readLine([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 99
    if-gtz p3, :cond_2

    .line 111
    :cond_0
    :goto_0
    return v0

    :cond_1
    move p2, v1

    .line 104
    :cond_2
    invoke-virtual {p0}, Ljavax/servlet/ServletInputStream;->read()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 105
    add-int/lit8 v1, p2, 0x1

    int-to-byte v4, v3

    aput-byte v4, p1, p2

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 107
    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    if-ne v0, p3, :cond_1

    .line 111
    :cond_3
    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0
.end method
