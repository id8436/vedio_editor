.class public Lcom/twitter/sdk/android/core/s;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lf/av;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lf/av;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lf/av;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lcom/twitter/sdk/android/core/s;->b:Lf/av;

    .line 34
    return-void
.end method
