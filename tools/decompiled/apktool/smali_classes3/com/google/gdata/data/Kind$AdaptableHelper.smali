.class public Lcom/google/gdata/data/Kind$AdaptableHelper;
.super Ljava/lang/Object;
.source "Kind.java"

# interfaces
.implements Lcom/google/gdata/data/Kind$Adaptable;


# instance fields
.field private adaptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/Kind$AdaptableHelper;->adaptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAdaptor(Lcom/google/gdata/data/Kind$Adaptor;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/gdata/data/Kind$AdaptableHelper;->adaptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public getAdaptor(Ljava/lang/Class;)Lcom/google/gdata/data/Kind$Adaptor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gdata/data/Kind$AdaptableHelper;->adaptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Kind$Adaptor;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Kind$Adaptor;

    .line 146
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdaptors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/gdata/data/Kind$AdaptableHelper;->adaptors:Ljava/util/List;

    return-object v0
.end method
