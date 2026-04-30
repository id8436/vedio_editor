.class Lcom/b/a/e/b;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"

# interfaces
.implements Lcom/b/a/e/i;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/e/j;)V
    .locals 0

    .prologue
    .line 15
    invoke-interface {p1}, Lcom/b/a/e/j;->onStart()V

    .line 16
    return-void
.end method
