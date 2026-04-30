.class Lcom/b/a/d/b/a/c;
.super Lcom/b/a/d/b/a/d;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/b/a/d",
        "<",
        "Lcom/b/a/d/b/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/b/a/d/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/b/a/d/b/a/b;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/b/a/d/b/a/b;

    invoke-direct {v0, p0}, Lcom/b/a/d/b/a/b;-><init>(Lcom/b/a/d/b/a/c;)V

    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Lcom/b/a/d/b/a/b;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/b/a/d/b/a/c;->c()Lcom/b/a/d/b/a/n;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/b/a/b;

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/d/b/a/b;->a(IILandroid/graphics/Bitmap$Config;)V

    .line 65
    return-object v0
.end method

.method protected synthetic b()Lcom/b/a/d/b/a/n;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/b/a/d/b/a/c;->a()Lcom/b/a/d/b/a/b;

    move-result-object v0

    return-object v0
.end method
