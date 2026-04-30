.class public Lcom/b/a/h/a/h;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lcom/b/a/h/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/h/a/f",
        "<TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/b/a/h/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/b/a/h/a/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/b/a/h/a/g;->c()Lcom/b/a/h/a/g;

    move-result-object v0

    return-object v0
.end method
