.class Lcom/facebook/i/ao;
.super Landroid/os/Handler;
.source "PlatformServiceClient.java"


# instance fields
.field final synthetic a:Lcom/facebook/i/an;


# direct methods
.method constructor <init>(Lcom/facebook/i/an;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/i/ao;->a:Lcom/facebook/i/an;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/i/ao;->a:Lcom/facebook/i/an;

    invoke-virtual {v0, p1}, Lcom/facebook/i/an;->a(Landroid/os/Message;)V

    .line 63
    return-void
.end method
