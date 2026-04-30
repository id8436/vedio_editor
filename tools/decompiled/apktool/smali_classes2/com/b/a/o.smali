.class public final Lcom/b/a/o;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/l;

.field private final b:Lcom/b/a/d/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/c/s",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/b/a/l;Lcom/b/a/d/c/s;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c/s",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 713
    iput-object p1, p0, Lcom/b/a/o;->a:Lcom/b/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lcom/b/a/o;->b:Lcom/b/a/d/c/s;

    .line 715
    iput-object p3, p0, Lcom/b/a/o;->c:Ljava/lang/Class;

    .line 716
    return-void
.end method

.method static synthetic a(Lcom/b/a/o;)Lcom/b/a/d/c/s;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/b/a/o;->b:Lcom/b/a/d/c/s;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/o;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/b/a/o;->c:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/b/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/b/a/o",
            "<TA;TT;>.com/b/a/p;"
        }
    .end annotation

    .prologue
    .line 735
    new-instance v0, Lcom/b/a/p;

    invoke-direct {v0, p0, p1}, Lcom/b/a/p;-><init>(Lcom/b/a/o;Ljava/lang/Object;)V

    return-object v0
.end method
