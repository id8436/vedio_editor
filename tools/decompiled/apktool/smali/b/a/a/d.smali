.class Lb/a/a/d;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lb/a/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/c;


# direct methods
.method constructor <init>(Lb/a/a/c;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lb/a/a/d;->a:Lb/a/a/c;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lb/a/a/f;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lb/a/a/f;

    invoke-direct {v0}, Lb/a/a/f;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lb/a/a/d;->a()Lb/a/a/f;

    move-result-object v0

    return-object v0
.end method
