.class public Lcom/b/a/d/c/y;
.super Ljava/lang/Object;
.source "UrlLoader.java"

# interfaces
.implements Lcom/b/a/d/c/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/d/c/s",
        "<",
        "Ljava/net/URL;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/c/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/c/s",
            "<",
            "Lcom/b/a/d/c/e;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/d/c/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c/s",
            "<",
            "Lcom/b/a/d/c/e;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/b/a/d/c/y;->a:Lcom/b/a/d/c/s;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/b/a/d/a/c;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1, p2, p3}, Lcom/b/a/d/c/y;->a(Ljava/net/URL;II)Lcom/b/a/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/URL;II)Lcom/b/a/d/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "Lcom/b/a/d/a/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/b/a/d/c/y;->a:Lcom/b/a/d/c/s;

    new-instance v1, Lcom/b/a/d/c/e;

    invoke-direct {v1, p1}, Lcom/b/a/d/c/e;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/b/a/d/c/s;->a(Ljava/lang/Object;II)Lcom/b/a/d/a/c;

    move-result-object v0

    return-object v0
.end method
