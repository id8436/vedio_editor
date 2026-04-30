.class Lc/a/a/a/c;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lc/a/a/a/d;

.field final synthetic b:Lc/a/a/a/b;


# direct methods
.method constructor <init>(Lc/a/a/a/b;Lc/a/a/a/d;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lc/a/a/a/c;->b:Lc/a/a/a/b;

    iput-object p2, p0, Lc/a/a/a/c;->a:Lc/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lc/a/a/a/c;->a:Lc/a/a/a/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/a/d;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lc/a/a/a/c;->a:Lc/a/a/a/d;

    invoke-virtual {v0, p1}, Lc/a/a/a/d;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 138
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lc/a/a/a/c;->a:Lc/a/a/a/d;

    invoke-virtual {v0, p1}, Lc/a/a/a/d;->onActivityPaused(Landroid/app/Activity;)V

    .line 122
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc/a/a/a/c;->a:Lc/a/a/a/d;

    invoke-virtual {v0, p1}, Lc/a/a/a/d;->onActivityResumed(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lc/a/a/a/c;->a:Lc/a/a/a/d;

    invoke-virtual {v0, p1, p2}, Lc/a/a/a/d;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lc/a/a/a/c;->a:Lc/a/a/a/d;

    invoke-virtual {v0, p1}, Lc/a/a/a/d;->onActivityStarted(Landroid/app/Activity;)V

    .line 112
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lc/a/a/a/c;->a:Lc/a/a/a/d;

    invoke-virtual {v0, p1}, Lc/a/a/a/d;->onActivityStopped(Landroid/app/Activity;)V

    .line 127
    return-void
.end method
