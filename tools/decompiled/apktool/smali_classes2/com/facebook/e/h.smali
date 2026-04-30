.class final Lcom/facebook/e/h;
.super Ljava/lang/Object;
.source "DataSources.java"

# interfaces
.implements Lcom/facebook/d/d/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/d/d/m",
        "<",
        "Lcom/facebook/e/f",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/facebook/e/h;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/e/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/e/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/e/h;->a:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/e/g;->a(Ljava/lang/Throwable;)Lcom/facebook/e/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/facebook/e/h;->a()Lcom/facebook/e/f;

    move-result-object v0

    return-object v0
.end method
