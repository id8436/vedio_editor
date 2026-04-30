.class Lcom/twitter/sdk/android/core/internal/v;
.super Ljava/lang/Object;
.source "SessionMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/t;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/t;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/v;->a:Lcom/twitter/sdk/android/core/internal/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/v;->a:Lcom/twitter/sdk/android/core/internal/t;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/t;->b()V

    .line 90
    return-void
.end method
