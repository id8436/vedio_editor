.class Lcom/b/a/d/b/a/r;
.super Lcom/b/a/d/b/a/d;
.source "SizeConfigStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/b/a/d",
        "<",
        "Lcom/b/a/d/b/a/q;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/b/a/d/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/b/a/d/b/a/q;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/b/a/d/b/a/q;

    invoke-direct {v0, p0}, Lcom/b/a/d/b/a/q;-><init>(Lcom/b/a/d/b/a/r;)V

    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)Lcom/b/a/d/b/a/q;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/b/a/d/b/a/r;->c()Lcom/b/a/d/b/a/n;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/b/a/q;

    .line 161
    invoke-virtual {v0, p1, p2}, Lcom/b/a/d/b/a/q;->a(ILandroid/graphics/Bitmap$Config;)V

    .line 162
    return-object v0
.end method

.method protected synthetic b()Lcom/b/a/d/b/a/n;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/b/a/d/b/a/r;->a()Lcom/b/a/d/b/a/q;

    move-result-object v0

    return-object v0
.end method
