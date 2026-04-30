.class Lcom/b/a/r;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/b/a/e/d;


# instance fields
.field private final a:Lcom/b/a/e/q;


# direct methods
.method public constructor <init>(Lcom/b/a/e/q;)V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lcom/b/a/r;->a:Lcom/b/a/e/q;

    .line 794
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 798
    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/b/a/r;->a:Lcom/b/a/e/q;

    invoke-virtual {v0}, Lcom/b/a/e/q;->d()V

    .line 801
    :cond_0
    return-void
.end method
