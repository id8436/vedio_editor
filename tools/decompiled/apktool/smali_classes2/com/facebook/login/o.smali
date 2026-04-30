.class Lcom/facebook/login/o;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/facebook/login/j;


# instance fields
.field final synthetic a:Lcom/facebook/login/n;


# direct methods
.method constructor <init>(Lcom/facebook/login/n;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/login/o;->a:Lcom/facebook/login/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/o;->a:Lcom/facebook/login/n;

    invoke-static {v0, p1}, Lcom/facebook/login/n;->a(Lcom/facebook/login/n;Lcom/facebook/login/LoginClient$Result;)V

    .line 72
    return-void
.end method
