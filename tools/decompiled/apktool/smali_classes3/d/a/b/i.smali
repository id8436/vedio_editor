.class public final Ld/a/b/i;
.super Ljava/lang/ref/WeakReference;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ld/a/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ld/a/b/h;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 526
    iput-object p2, p0, Ld/a/b/i;->a:Ljava/lang/Object;

    .line 527
    return-void
.end method
