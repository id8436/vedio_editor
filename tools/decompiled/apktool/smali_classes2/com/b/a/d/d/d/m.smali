.class Lcom/b/a/d/d/d/m;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lcom/b/a/d/c/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/c/s",
        "<",
        "Lcom/b/a/b/a;",
        "Lcom/b/a/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/b/a;II)Lcom/b/a/d/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/b/a;",
            "II)",
            "Lcom/b/a/d/a/c",
            "<",
            "Lcom/b/a/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lcom/b/a/d/d/d/n;

    invoke-direct {v0, p1}, Lcom/b/a/d/d/d/n;-><init>(Lcom/b/a/b/a;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/b/a/d/a/c;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/b/a/b/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/b/a/d/d/d/m;->a(Lcom/b/a/b/a;II)Lcom/b/a/d/a/c;

    move-result-object v0

    return-object v0
.end method
