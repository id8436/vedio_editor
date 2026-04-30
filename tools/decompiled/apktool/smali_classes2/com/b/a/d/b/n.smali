.class Lcom/b/a/d/b/n;
.super Ljava/lang/Object;
.source "EngineJob.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/d/b/z;Z)Lcom/b/a/d/b/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/d/b/z",
            "<TR;>;Z)",
            "Lcom/b/a/d/b/s",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/b/a/d/b/s;

    invoke-direct {v0, p1, p2}, Lcom/b/a/d/b/s;-><init>(Lcom/b/a/d/b/z;Z)V

    return-object v0
.end method
