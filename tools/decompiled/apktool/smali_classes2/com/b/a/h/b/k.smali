.class public interface abstract Lcom/b/a/h/b/k;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lcom/b/a/e/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/e/j;"
    }
.end annotation


# virtual methods
.method public abstract getRequest()Lcom/b/a/h/c;
.end method

.method public abstract getSize(Lcom/b/a/h/b/h;)V
.end method

.method public abstract onLoadCleared(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadStarted(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Lcom/b/a/h/a/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/b/a/h/a/d",
            "<-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract setRequest(Lcom/b/a/h/c;)V
.end method
