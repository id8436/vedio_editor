.class final Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StructSerializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final underlying:Lcom/dropbox/core/stone/StructSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StructSerializer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/stone/StructSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/stone/StructSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    .line 258
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
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->m:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 282
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->m:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 291
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 292
    const/4 v0, 0x0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;

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
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    invoke-virtual {p2}, Lcom/d/a/a/g;->g()V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/d/a/a/g;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    invoke-virtual {p2}, Lcom/d/a/a/g;->g()V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V

    goto :goto_0
.end method
