.class final Lcom/facebook/z;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/aa;


# direct methods
.method constructor <init>(Lcom/facebook/aa;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/facebook/z;->a:Lcom/facebook/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/facebook/d;->a()Lcom/facebook/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/d;->c()Z

    .line 224
    invoke-static {}, Lcom/facebook/az;->a()Lcom/facebook/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/az;->c()Z

    .line 225
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/facebook/Profile;->a()Lcom/facebook/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/facebook/Profile;->b()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/facebook/z;->a:Lcom/facebook/aa;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/facebook/z;->a:Lcom/facebook/aa;

    invoke-interface {v0}, Lcom/facebook/aa;->a()V

    .line 235
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/facebook/z;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
