.class public Lcom/a/a/a/p;
.super Ljava/lang/Object;
.source "DefaultQueueFactory.java"

# interfaces
.implements Lcom/a/a/a/ad;


# instance fields
.field a:Lcom/a/a/a/i/a/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/a/a/a/i/a/j;

    invoke-direct {v0}, Lcom/a/a/a/i/a/j;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/p;->a:Lcom/a/a/a/i/a/k;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/a/c/a;J)Lcom/a/a/a/aa;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/a/a/a/a/a;

    new-instance v1, Lcom/a/a/a/i/a/h;

    iget-object v2, p0, Lcom/a/a/a/p;->a:Lcom/a/a/a/i/a/k;

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/a/a/a/i/a/h;-><init>(Lcom/a/a/a/c/a;JLcom/a/a/a/i/a/k;)V

    invoke-direct {v0, v1}, Lcom/a/a/a/a/a;-><init>(Lcom/a/a/a/aa;)V

    return-object v0
.end method

.method public b(Lcom/a/a/a/c/a;J)Lcom/a/a/a/aa;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/a/a/a/a/a;

    new-instance v1, Lcom/a/a/a/e/a;

    invoke-direct {v1, p1, p2, p3}, Lcom/a/a/a/e/a;-><init>(Lcom/a/a/a/c/a;J)V

    invoke-direct {v0, v1}, Lcom/a/a/a/a/a;-><init>(Lcom/a/a/a/aa;)V

    return-object v0
.end method
