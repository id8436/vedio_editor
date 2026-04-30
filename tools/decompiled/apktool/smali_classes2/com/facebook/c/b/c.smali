.class Lcom/facebook/c/b/c;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/d/c/b;


# instance fields
.field final synthetic a:Lcom/facebook/c/b/a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/c/b/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/c/b/a;)V
    .locals 1

    .prologue
    .line 248
    iput-object p1, p0, Lcom/facebook/c/b/c;->a:Lcom/facebook/c/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/c/b/c;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/c/b/a;Lcom/facebook/c/b/b;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/facebook/c/b/c;-><init>(Lcom/facebook/c/b/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/c/b/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/facebook/c/b/c;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/c/b/c;->a:Lcom/facebook/c/b/a;

    invoke-static {v0, p1}, Lcom/facebook/c/b/a;->a(Lcom/facebook/c/b/a;Ljava/io/File;)Lcom/facebook/c/b/e;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/facebook/c/b/e;->a:Lcom/facebook/c/b/f;

    sget-object v2, Lcom/facebook/c/b/f;->a:Lcom/facebook/c/b/f;

    if-ne v1, v2, :cond_0

    .line 260
    iget-object v1, p0, Lcom/facebook/c/b/c;->b:Ljava/util/List;

    new-instance v2, Lcom/facebook/c/b/d;

    iget-object v0, v0, Lcom/facebook/c/b/e;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/facebook/c/b/d;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/c/b/b;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    return-void
.end method

.method public c(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method
