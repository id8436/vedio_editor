.class final Lcom/twitter/sdk/android/core/ag;
.super Ljava/lang/Object;
.source "TwitterCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/twitter/sdk/android/core/af;->a:Lcom/twitter/sdk/android/core/af;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/af;->d()V

    .line 93
    return-void
.end method
