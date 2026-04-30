.class Lcom/a/a/a/h/f;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkUtilImpl.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/a/a/a/h/d;


# direct methods
.method constructor <init>(Lcom/a/a/a/h/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/a/a/a/h/f;->b:Lcom/a/a/a/h/d;

    iput-object p2, p0, Lcom/a/a/a/h/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/a/a/a/h/f;->b:Lcom/a/a/a/h/d;

    iget-object v1, p0, Lcom/a/a/a/h/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/a/a/a/h/d;->b(Landroid/content/Context;)V

    .line 51
    return-void
.end method
