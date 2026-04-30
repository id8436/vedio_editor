.class public final Lcom/google/gdata/util/common/net/UriParameterMap;
.super Lcom/google/common/collect/ForwardingMultimap;
.source "UriParameterMap.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMultimap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/common/collect/ListMultimap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final EMPTY_MAP:Lcom/google/gdata/util/common/net/UriParameterMap;

.field private static final serialVersionUID:J = -0x2a612f103f1116caL


# instance fields
.field private final delegate:Lcom/google/common/collect/ListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/common/net/UriParameterMap;-><init>(Lcom/google/common/collect/ListMultimap;)V

    sput-object v0, Lcom/google/gdata/util/common/net/UriParameterMap;->EMPTY_MAP:Lcom/google/gdata/util/common/net/UriParameterMap;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/google/common/collect/LinkedListMultimap;->create()Lcom/google/common/collect/LinkedListMultimap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/util/common/net/UriParameterMap;-><init>(Lcom/google/common/collect/ListMultimap;)V

    .line 98
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ListMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMultimap;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate:Lcom/google/common/collect/ListMultimap;

    .line 93
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/gdata/util/common/net/UriEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/google/gdata/util/common/net/UriParameterMap;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/gdata/util/common/net/UriParameterMap;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 1

    .prologue
    .line 123
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-direct {v0}, Lcom/google/gdata/util/common/net/UriParameterMap;-><init>()V

    .line 125
    invoke-virtual {v0, p0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->merge(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 126
    return-object v0
.end method

.method public static unmodifiableMap(Lcom/google/gdata/util/common/net/UriParameterMap;)Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Multimaps;->unmodifiableListMultimap(Lcom/google/common/collect/ListMultimap;)Lcom/google/common/collect/ListMultimap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/common/net/UriParameterMap;-><init>(Lcom/google/common/collect/ListMultimap;)V

    return-object v0
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/nio/charset/Charset;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 212
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/gdata/util/common/net/UriEncoder;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 215
    const-string/jumbo v1, ""

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    const-string/jumbo v1, "="

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/gdata/util/common/net/UriEncoder;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 219
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string/jumbo v0, "&"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 223
    :cond_2
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuilder;Ljava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/net/UriParameterMap;->appendTo(Ljava/lang/Appendable;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public clone()Lcom/google/gdata/util/common/net/UriParameterMap;
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/LinkedListMultimap;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/google/gdata/util/common/net/UriParameterMap;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/common/net/UriParameterMap;-><init>(Lcom/google/common/collect/ListMultimap;)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->clone()Lcom/google/gdata/util/common/net/UriParameterMap;

    move-result-object v0

    return-object v0
.end method

.method public copyToArrayMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 255
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate:Lcom/google/common/collect/ListMultimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 70
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 70
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method merge(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 159
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p2}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gdata/util/common/net/UriParameterMap$1;

    invoke-direct {v1, p0}, Lcom/google/gdata/util/common/net/UriParameterMap$1;-><init>(Lcom/google/gdata/util/common/net/UriParameterMap;)V

    invoke-static {p1, v0, v1}, Lcom/google/gdata/util/httputil/FormUrlDecoder;->parseWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/util/httputil/FormUrlDecoder$Callback;)V

    .line 167
    return-void
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 70
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/net/UriParameterMap;->replaceValues(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1

    .prologue
    .line 70
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/net/UriParameterMap;->replaceValues(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/gdata/util/common/net/UriParameterMap;->delegate()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/ListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/google/gdata/util/common/net/UriEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/net/UriParameterMap;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/util/common/net/UriParameterMap;->appendTo(Ljava/lang/StringBuilder;Ljava/nio/charset/Charset;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
