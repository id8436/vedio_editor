.class Lcom/facebook/login/u;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/i/s;


# instance fields
.field final synthetic a:Lcom/facebook/login/r;


# direct methods
.method constructor <init>(Lcom/facebook/login/r;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/facebook/login/u;->a:Lcom/facebook/login/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/facebook/login/u;->a:Lcom/facebook/login/r;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/login/r;->a(ILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method
