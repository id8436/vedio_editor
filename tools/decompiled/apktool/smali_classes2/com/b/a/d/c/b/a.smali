.class public Lcom/b/a/d/c/b/a;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/b/a/d/c/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/c/b/g",
        "<",
        "Lcom/b/a/d/c/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/c/p",
            "<",
            "Lcom/b/a/d/c/e;",
            "Lcom/b/a/d/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/d/c/b/a;-><init>(Lcom/b/a/d/c/p;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/b/a/d/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c/p",
            "<",
            "Lcom/b/a/d/c/e;",
            "Lcom/b/a/d/c/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/b/a/d/c/b/a;->a:Lcom/b/a/d/c/p;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/d/c/e;II)Lcom/b/a/d/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/c/e;",
            "II)",
            "Lcom/b/a/d/a/c",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/b/a/d/c/b/a;->a:Lcom/b/a/d/c/p;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/b/a/d/c/b/a;->a:Lcom/b/a/d/c/p;

    invoke-virtual {v0, p1, v1, v1}, Lcom/b/a/d/c/p;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/c/e;

    .line 54
    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/b/a/d/c/b/a;->a:Lcom/b/a/d/c/p;

    invoke-virtual {v0, p1, v1, v1, p1}, Lcom/b/a/d/c/p;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 59
    :cond_0
    :goto_0
    new-instance v0, Lcom/b/a/d/a/f;

    invoke-direct {v0, p1}, Lcom/b/a/d/a/f;-><init>(Lcom/b/a/d/c/e;)V

    return-object v0

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/b/a/d/a/c;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/b/a/d/c/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/b/a/d/c/b/a;->a(Lcom/b/a/d/c/e;II)Lcom/b/a/d/a/c;

    move-result-object v0

    return-object v0
.end method
