.class public Lcom/facebook/imagepipeline/e/d;
.super Ljava/lang/Object;
.source "DynamicDefaultDiskStorageFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/e/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/c/b/l;)Lcom/facebook/c/b/p;
    .locals 5

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/c/b/x;

    .line 23
    invoke-virtual {p1}, Lcom/facebook/c/b/l;->a()I

    move-result v1

    .line 24
    invoke-virtual {p1}, Lcom/facebook/c/b/l;->c()Lcom/facebook/d/d/m;

    move-result-object v2

    .line 25
    invoke-virtual {p1}, Lcom/facebook/c/b/l;->b()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {p1}, Lcom/facebook/c/b/l;->h()Lcom/facebook/c/a/a;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/c/b/x;-><init>(ILcom/facebook/d/d/m;Ljava/lang/String;Lcom/facebook/c/a/a;)V

    .line 22
    return-object v0
.end method
