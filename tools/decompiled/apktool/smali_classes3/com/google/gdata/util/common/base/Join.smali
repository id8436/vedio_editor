.class public final Lcom/google/gdata/util/common/base/Join;
.super Ljava/lang/Object;
.source "Join.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendOneToken(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Join;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 287
    return-void
.end method

.method private static iterable(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v0, Lcom/google/gdata/util/common/base/Join$1;

    invoke-direct {v0, p1, p0}, Lcom/google/gdata/util/common/base/Join$1;-><init>([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/gdata/util/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    new-instance v1, Lcom/google/gdata/util/common/base/Join$JoinException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/gdata/util/common/base/Join$JoinException;-><init>(Ljava/io/IOException;Lcom/google/gdata/util/common/base/Join$1;)V

    throw v1
.end method

.method public static varargs join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {p2, p3}, Lcom/google/gdata/util/common/base/Join;->iterable(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/Join;->join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)TT;"
        }
    .end annotation

    .prologue
    .line 277
    :try_start_0
    invoke-static {p2}, Lcom/google/gdata/util/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner$MapJoiner;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    new-instance v1, Lcom/google/gdata/util/common/base/Join$JoinException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/gdata/util/common/base/Join$JoinException;-><init>(Ljava/io/IOException;Lcom/google/gdata/util/common/base/Join$1;)V

    throw v1
.end method

.method public static join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    :try_start_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/Join;->appendOneToken(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 245
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 247
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/base/Join;->appendOneToken(Ljava/lang/Appendable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    new-instance v1, Lcom/google/gdata/util/common/base/Join$JoinException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/gdata/util/common/base/Join$JoinException;-><init>(Ljava/io/IOException;Lcom/google/gdata/util/common/base/Join$1;)V

    throw v1

    .line 253
    :cond_0
    return-object p0
.end method

.method public static join(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/gdata/util/common/base/Join;->join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs join(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/gdata/util/common/base/Join;->iterable(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gdata/util/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner$MapJoiner;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->join(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-static {v0, p0, p1}, Lcom/google/gdata/util/common/base/Join;->join(Ljava/lang/Appendable;Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/Appendable;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gdata/util/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 290
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/CharSequence;

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
