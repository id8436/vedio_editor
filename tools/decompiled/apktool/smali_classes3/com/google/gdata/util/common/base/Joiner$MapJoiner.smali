.class public Lcom/google/gdata/util/common/base/Joiner$MapJoiner;
.super Ljava/lang/Object;
.source "Joiner.java"


# instance fields
.field private joiner:Lcom/google/gdata/util/common/base/Joiner;

.field private keyValueSeparator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/gdata/util/common/base/Joiner;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    .line 244
    iput-object p2, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/common/base/Joiner;Ljava/lang/String;Lcom/google/gdata/util/common/base/Joiner$1;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;-><init>(Lcom/google/gdata/util/common/base/Joiner;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Map",
            "<**>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    iget-object v2, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 259
    iget-object v2, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 260
    iget-object v2, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/gdata/util/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 261
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-static {v0}, Lcom/google/gdata/util/common/base/Joiner;->access$100(Lcom/google/gdata/util/common/base/Joiner;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 264
    iget-object v2, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 265
    iget-object v2, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 266
    iget-object v2, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/gdata/util/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 269
    :cond_0
    return-object p1
.end method

.method public appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    return-object p1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public join(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner$MapJoiner;
    .locals 3

    .prologue
    .line 302
    new-instance v0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;

    iget-object v1, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-virtual {v1, p1}, Lcom/google/gdata/util/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;-><init>(Lcom/google/gdata/util/common/base/Joiner;Ljava/lang/String;)V

    return-object v0
.end method
