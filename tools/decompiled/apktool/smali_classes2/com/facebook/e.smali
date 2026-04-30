.class Lcom/facebook/e;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/d;


# direct methods
.method constructor <init>(Lcom/facebook/d;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/facebook/e;->a:Lcom/facebook/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/e;->a:Lcom/facebook/d;

    invoke-static {v0}, Lcom/facebook/d;->a(Lcom/facebook/d;)V

    .line 206
    return-void
.end method
