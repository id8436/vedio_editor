.class public Lcom/l/b/a/d;
.super Lcom/l/b/a/c;
.source "BEncoderStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 47
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/l/b/a/c;-><init>(Ljava/io/OutputStream;I)V

    .line 50
    return-void
.end method

.method public static a([B)I
    .locals 1

    .prologue
    .line 56
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method
