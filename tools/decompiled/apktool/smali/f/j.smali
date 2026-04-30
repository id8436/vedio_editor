.class public interface abstract Lf/j;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailure(Lf/g;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onResponse(Lf/g;Lf/av;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g",
            "<TT;>;",
            "Lf/av",
            "<TT;>;)V"
        }
    .end annotation
.end method
