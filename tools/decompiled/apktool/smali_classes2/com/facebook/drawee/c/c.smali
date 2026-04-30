.class Lcom/facebook/drawee/c/c;
.super Lcom/facebook/drawee/c/k;
.source "AbstractDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/drawee/c/k",
        "<TINFO;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/facebook/drawee/c/k;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/drawee/c/i;Lcom/facebook/drawee/c/i;)Lcom/facebook/drawee/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/drawee/c/i",
            "<-TINFO;>;",
            "Lcom/facebook/drawee/c/i",
            "<-TINFO;>;)",
            "Lcom/facebook/drawee/c/c",
            "<TINFO;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/facebook/drawee/c/c;

    invoke-direct {v0}, Lcom/facebook/drawee/c/c;-><init>()V

    .line 62
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/c/c;->a(Lcom/facebook/drawee/c/i;)V

    .line 63
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/c/c;->a(Lcom/facebook/drawee/c/i;)V

    .line 64
    return-object v0
.end method
