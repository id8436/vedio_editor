.class public abstract Lcom/b/a/h/b/a;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lcom/b/a/h/b/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/h/b/k",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private request:Lcom/b/a/h/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/b/a/h/c;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/b/a/h/b/a;->request:Lcom/b/a/h/c;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public setRequest(Lcom/b/a/h/c;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/b/a/h/b/a;->request:Lcom/b/a/h/c;

    .line 35
    return-void
.end method
