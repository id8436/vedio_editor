.class final Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<TT;>;"
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
    .line 229
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    .line 231
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 2
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

    .prologue
    .line 244
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->m:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 246
    const/4 v0, 0x0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 1
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

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    invoke-virtual {p2}, Lcom/d/a/a/g;->g()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    goto :goto_0
.end method
