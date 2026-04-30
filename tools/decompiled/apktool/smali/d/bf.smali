.class public abstract Ld/bf;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ld/an;JLe/j;)Ld/bf;
    .locals 3
    .param p0    # Ld/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 216
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    new-instance v0, Ld/bg;

    invoke-direct {v0, p0, p1, p2, p3}, Ld/bg;-><init>(Ld/an;JLe/j;)V

    return-object v0
.end method

.method public static a(Ld/an;[B)Ld/bf;
    .locals 4
    .param p0    # Ld/an;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 209
    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    invoke-virtual {v0, p1}, Le/f;->b([B)Le/f;

    move-result-object v0

    .line 210
    array-length v1, p1

    int-to-long v2, v1

    invoke-static {p0, v2, v3, v0}, Ld/bf;->a(Ld/an;JLe/j;)Ld/bf;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Ld/bf;->a()Ld/an;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    sget-object v1, Ld/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ld/an;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ld/a/c;->e:Ljava/nio/charset/Charset;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ld/an;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract b()J
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Ld/bf;->d()Le/j;

    move-result-object v0

    invoke-interface {v0}, Le/j;->g()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Ld/bf;->d()Le/j;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/io/Closeable;)V

    .line 188
    return-void
.end method

.method public abstract d()Le/j;
.end method

.method public final e()Ljava/io/Reader;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Ld/bf;->a:Ljava/io/Reader;

    .line 158
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ld/bh;

    invoke-virtual {p0}, Ld/bf;->d()Le/j;

    move-result-object v1

    invoke-direct {p0}, Ld/bf;->g()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ld/bh;-><init>(Le/j;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Ld/bf;->a:Ljava/io/Reader;

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Ld/bf;->d()Le/j;

    move-result-object v1

    .line 174
    :try_start_0
    invoke-direct {p0}, Ld/bf;->g()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v1, v0}, Ld/a/c;->a(Le/j;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 175
    invoke-interface {v1, v0}, Le/j;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 177
    invoke-static {v1}, Ld/a/c;->a(Ljava/io/Closeable;)V

    .line 175
    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ld/a/c;->a(Ljava/io/Closeable;)V

    throw v0
.end method
