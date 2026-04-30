.class public abstract Lcom/dropbox/core/stone/CompositeSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "CompositeSerializer.java"


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


# static fields
.field protected static final TAG_FIELD:Ljava/lang/String; = ".tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method

.method protected static hasTag(Lcom/d/a/a/k;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, ".tag"

    invoke-virtual {p0}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static readTag(Lcom/d/a/a/k;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p0}, Lcom/dropbox/core/stone/CompositeSerializer;->hasTag(Lcom/d/a/a/k;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 23
    invoke-static {p0}, Lcom/dropbox/core/stone/CompositeSerializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    goto :goto_0
.end method


# virtual methods
.method protected writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    const-string/jumbo v0, ".tag"

    invoke-virtual {p2, v0, p1}, Lcom/d/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method
