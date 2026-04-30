.class final Lcom/g/a/n;
.super Lcom/g/b/b;
.source "PreHoneycombCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/g/b/b",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/g/b/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 139
    invoke-static {p1}, Lcom/g/c/a/a;->a(Landroid/view/View;)Lcom/g/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/g/c/a/a;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/g/a/n;->a(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
