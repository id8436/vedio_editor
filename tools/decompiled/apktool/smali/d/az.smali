.class public abstract Ld/az;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ld/an;Le/k;)Ld/az;
    .locals 1
    .param p0    # Ld/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    new-instance v0, Ld/ba;

    invoke-direct {v0, p0, p1}, Ld/ba;-><init>(Ld/an;Le/k;)V

    return-object v0
.end method

.method public static create(Ld/an;Ljava/io/File;)Ld/az;
    .locals 2
    .param p0    # Ld/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    new-instance v0, Ld/bc;

    invoke-direct {v0, p0, p1}, Ld/bc;-><init>(Ld/an;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Ld/an;Ljava/lang/String;)Ld/az;
    .locals 3
    .param p0    # Ld/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    sget-object v0, Ld/a/c;->e:Ljava/nio/charset/Charset;

    .line 49
    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Ld/an;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    sget-object v0, Ld/a/c;->e:Ljava/nio/charset/Charset;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld/an;->a(Ljava/lang/String;)Ld/an;

    move-result-object p0

    .line 56
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 57
    invoke-static {p0, v0}, Ld/az;->create(Ld/an;[B)Ld/az;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ld/an;[B)Ld/az;
    .locals 2
    .param p0    # Ld/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Ld/az;->create(Ld/an;[BII)Ld/az;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ld/an;[BII)Ld/az;
    .locals 6
    .param p0    # Ld/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Ld/a/c;->a(JJJ)V

    .line 88
    new-instance v0, Ld/bb;

    invoke-direct {v0, p0, p3, p1, p2}, Ld/bb;-><init>(Ld/an;I[BI)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Ld/an;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeTo(Le/i;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
