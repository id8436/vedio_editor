.class final Lcom/facebook/a/c;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 693
    invoke-static {}, Lcom/facebook/a/a;->a()Lcom/facebook/a/j;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/j;->b:Lcom/facebook/a/j;

    if-eq v0, v1, :cond_0

    .line 694
    sget-object v0, Lcom/facebook/a/k;->b:Lcom/facebook/a/k;

    invoke-static {v0}, Lcom/facebook/a/a;->a(Lcom/facebook/a/k;)V

    .line 696
    :cond_0
    return-void
.end method
