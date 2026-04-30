.class public Lcom/a/a/a/h;
.super Ljava/lang/Object;
.source "CancelResult.java"


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/a/a/a/r;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/a/a/a/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/a/a/a/r;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/a/a/a/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/a/a/a/h;->a:Ljava/util/Collection;

    .line 22
    iput-object p2, p0, Lcom/a/a/a/h;->b:Ljava/util/Collection;

    .line 23
    return-void
.end method
