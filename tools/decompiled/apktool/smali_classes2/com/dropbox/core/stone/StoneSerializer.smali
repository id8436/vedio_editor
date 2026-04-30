.class public abstract Lcom/dropbox/core/stone/StoneSerializer;
.super Ljava/lang/Object;
.source "StoneSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializer;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static expectEndArray(Lcom/d/a/a/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->e:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 112
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "expected end of array value."

    invoke-direct {v0, p0, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 115
    return-void
.end method

.method protected static expectEndObject(Lcom/d/a/a/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 98
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "expected end of object value."

    invoke-direct {v0, p0, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 101
    return-void
.end method

.method protected static expectField(Ljava/lang/String;Lcom/d/a/a/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 81
    new-instance v0, Lcom/d/a/a/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected field name, but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/d/a/a/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', but was: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 87
    return-void
.end method

.method protected static expectStartArray(Lcom/d/a/a/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 105
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "expected array value."

    invoke-direct {v0, p0, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 108
    return-void
.end method

.method protected static expectStartObject(Lcom/d/a/a/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 91
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "expected object value."

    invoke-direct {v0, p0, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 94
    return-void
.end method

.method protected static getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 74
    new-instance v0, Lcom/d/a/a/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected string value, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static skipFields(Lcom/d/a/a/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/o;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/d/a/a/k;->b()Lcom/d/a/a/k;

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/o;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    goto :goto_0

    .line 137
    :cond_2
    new-instance v0, Lcom/d/a/a/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t skip token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_3
    return-void
.end method

.method protected static skipValue(Lcom/d/a/a/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/d/a/a/k;->b()Lcom/d/a/a/k;

    .line 120
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/a/o;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Lcom/d/a/a/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t skip JSON value token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation
.end method

.method public deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/dropbox/core/stone/Util;->JSON:Lcom/d/a/a/d;

    invoke-virtual {v0, p1}, Lcom/d/a/a/d;->a(Ljava/io/InputStream;)Lcom/d/a/a/k;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 66
    invoke-virtual {p0, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    sget-object v0, Lcom/dropbox/core/stone/Util;->JSON:Lcom/d/a/a/d;

    invoke-virtual {v0, p1}, Lcom/d/a/a/d;->a(Ljava/lang/String;)Lcom/d/a/a/k;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 55
    invoke-virtual {p0, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    throw v0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Impossible I/O exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Lcom/d/a/a/f; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v2, Lcom/dropbox/core/stone/StoneSerializer;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Impossible JSON exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 28
    :catch_1
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Impossible I/O exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/d/a/a/g;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation
.end method

.method public serialize(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Ljava/io/OutputStream;Z)V

    .line 36
    return-void
.end method

.method public serialize(Ljava/lang/Object;Ljava/io/OutputStream;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/dropbox/core/stone/Util;->JSON:Lcom/d/a/a/d;

    invoke-virtual {v0, p2}, Lcom/d/a/a/d;->a(Ljava/io/OutputStream;)Lcom/d/a/a/g;

    move-result-object v0

    .line 40
    if-eqz p3, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/d/a/a/g;->b()Lcom/d/a/a/g;

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    :try_end_0
    .catch Lcom/d/a/a/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    invoke-virtual {v0}, Lcom/d/a/a/g;->flush()V

    .line 49
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Impossible JSON generation exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
