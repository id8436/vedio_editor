.class Lcom/a/a/a/e;
.super Ljava/lang/Object;
.source "CallbackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/a/d;


# direct methods
.method constructor <init>(Lcom/a/a/a/d;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/a/a/a/e;->a:Lcom/a/a/a/d;

    iget-object v0, v0, Lcom/a/a/a/d;->a:Lcom/a/a/a/g/h;

    new-instance v1, Lcom/a/a/a/f;

    invoke-direct {v1, p0}, Lcom/a/a/a/f;-><init>(Lcom/a/a/a/e;)V

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/f;)V

    .line 127
    return-void
.end method
