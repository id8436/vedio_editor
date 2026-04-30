.class final Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final underlying:Lcom/dropbox/core/stone/StoneSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/stone/StoneSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    .line 304
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/d/a/a/k;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->expectStartArray(Lcom/d/a/a/k;)V

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    :goto_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v1

    sget-object v2, Lcom/d/a/a/o;->e:Lcom/d/a/a/o;

    if-eq v1, v2, :cond_0

    .line 320
    iget-object v1, p0, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    .line 321
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->expectEndArray(Lcom/d/a/a/k;)V

    .line 324
    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 299
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->serialize(Ljava/util/List;Lcom/d/a/a/g;)V

    return-void
.end method

.method public serialize(Ljava/util/List;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
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

    .prologue
    .line 308
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(I)V

    .line 309
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v2, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->d()V

    .line 313
    return-void
.end method
