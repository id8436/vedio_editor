.class public final Le/q;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Le/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le/q;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Le/aa;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Le/ac;

    invoke-direct {v0}, Le/ac;-><init>()V

    invoke-static {p0, v0}, Le/q;->a(Ljava/io/OutputStream;Le/ac;)Le/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Le/ac;)Le/aa;
    .locals 2

    .prologue
    .line 69
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    new-instance v0, Le/r;

    invoke-direct {v0, p1, p0}, Le/r;-><init>(Le/ac;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)Le/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-static {p0}, Le/q;->c(Ljava/net/Socket;)Le/a;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Le/q;->a(Ljava/io/OutputStream;Le/ac;)Le/aa;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Le/a;->a(Le/aa;)Le/aa;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)Le/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 166
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Le/q;->a(Ljava/io/InputStream;)Le/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Le/ab;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Le/ac;

    invoke-direct {v0}, Le/ac;-><init>()V

    invoke-static {p0, v0}, Le/q;->a(Ljava/io/InputStream;Le/ac;)Le/ab;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Le/ac;)Le/ab;
    .locals 2

    .prologue
    .line 128
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    new-instance v0, Le/s;

    invoke-direct {v0, p1, p0}, Le/s;-><init>(Le/ac;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static a(Le/aa;)Le/i;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Le/u;

    invoke-direct {v0, p0}, Le/u;-><init>(Le/aa;)V

    return-object v0
.end method

.method public static a(Le/ab;)Le/j;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Le/v;

    invoke-direct {v0, p0}, Le/v;-><init>(Le/ab;)V

    return-object v0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)Le/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Le/q;->a(Ljava/io/OutputStream;)Le/aa;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/net/Socket;)Le/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    invoke-static {p0}, Le/q;->c(Ljava/net/Socket;)Le/a;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Le/q;->a(Ljava/io/InputStream;Le/ac;)Le/ab;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Le/a;->a(Le/ab;)Le/ab;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/net/Socket;)Le/a;
    .locals 1

    .prologue
    .line 228
    new-instance v0, Le/t;

    invoke-direct {v0, p0}, Le/t;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
