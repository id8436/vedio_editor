.class Lcom/twitter/sdk/android/core/internal/c;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/d;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/b;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/b;Lcom/twitter/sdk/android/core/internal/d;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/c;->b:Lcom/twitter/sdk/android/core/internal/b;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/c;->a:Lcom/twitter/sdk/android/core/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/c;->a:Lcom/twitter/sdk/android/core/internal/d;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/core/internal/d;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/c;->a:Lcom/twitter/sdk/android/core/internal/d;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/d;->e(Landroid/app/Activity;)V

    .line 131
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/c;->a:Lcom/twitter/sdk/android/core/internal/d;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/d;->c(Landroid/app/Activity;)V

    .line 115
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/c;->a:Lcom/twitter/sdk/android/core/internal/d;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/d;->b(Landroid/app/Activity;)V

    .line 110
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/c;->a:Lcom/twitter/sdk/android/core/internal/d;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/sdk/android/core/internal/d;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/c;->a:Lcom/twitter/sdk/android/core/internal/d;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/d;->a(Landroid/app/Activity;)V

    .line 105
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/c;->a:Lcom/twitter/sdk/android/core/internal/d;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/d;->d(Landroid/app/Activity;)V

    .line 120
    return-void
.end method
