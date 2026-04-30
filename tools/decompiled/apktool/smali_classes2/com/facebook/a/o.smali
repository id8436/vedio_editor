.class final Lcom/facebook/a/o;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1461
    invoke-static {}, Lcom/facebook/a/a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/n;->a(Landroid/content/Context;)V

    .line 1462
    return-void
.end method
