.class Lcom/k/a/b;
.super Ljava/lang/ref/WeakReference;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TM;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/k/a/a;


# direct methods
.method public constructor <init>(Lcom/k/a/a;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/k/a/a;",
            "TM;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TM;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 31
    iput-object p1, p0, Lcom/k/a/b;->a:Lcom/k/a/a;

    .line 32
    return-void
.end method
