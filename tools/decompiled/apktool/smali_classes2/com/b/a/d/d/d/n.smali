.class Lcom/b/a/d/d/d/n;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lcom/b/a/d/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/a/c",
        "<",
        "Lcom/b/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/b/a;


# direct methods
.method public constructor <init>(Lcom/b/a/b/a;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/b/a/d/d/d/n;->a:Lcom/b/a/b/a;

    .line 20
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/b/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/b/a/d/d/d/n;->b(Lcom/b/a/k;)Lcom/b/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public b(Lcom/b/a/k;)Lcom/b/a/b/a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/b/a/d/d/d/n;->a:Lcom/b/a/b/a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/b/a/d/d/d/n;->a:Lcom/b/a/b/a;

    invoke-virtual {v0}, Lcom/b/a/b/a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
