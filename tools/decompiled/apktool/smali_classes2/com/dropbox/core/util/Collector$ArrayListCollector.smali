.class public final Lcom/dropbox/core/util/Collector$ArrayListCollector;
.super Lcom/dropbox/core/util/Collector;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/util/Collector",
        "<TE;",
        "Ljava/util/ArrayList",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/dropbox/core/util/Collector;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/core/util/Collector$ArrayListCollector;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dropbox/core/util/Collector$ArrayListCollector;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already called finish()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/util/Collector$ArrayListCollector;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public bridge synthetic finish()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/dropbox/core/util/Collector$ArrayListCollector;->finish()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public finish()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/util/Collector$ArrayListCollector;->list:Ljava/util/ArrayList;

    .line 25
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already called finish()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/core/util/Collector$ArrayListCollector;->list:Ljava/util/ArrayList;

    .line 27
    return-object v0
.end method
