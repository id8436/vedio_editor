.class Lcom/facebook/c/b/o;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"

# interfaces
.implements Lcom/facebook/d/d/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/d/d/m",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/c/b/n;


# direct methods
.method constructor <init>(Lcom/facebook/c/b/n;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/facebook/c/b/o;->a:Lcom/facebook/c/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/c/b/o;->a:Lcom/facebook/c/b/n;

    invoke-static {v0}, Lcom/facebook/c/b/n;->k(Lcom/facebook/c/b/n;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/facebook/c/b/o;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
