.class public abstract Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;
.super Ljava/lang/Object;
.source "DbxRouteErrorCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private routeError:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;->routeError:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getRouteError()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;->routeError:Ljava/lang/Object;

    return-object v0
.end method

.method public setRouteError(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    iput-object p1, p0, Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;->routeError:Ljava/lang/Object;

    .line 15
    return-void
.end method
