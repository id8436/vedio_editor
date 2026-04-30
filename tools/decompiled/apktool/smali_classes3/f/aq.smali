.class Lf/aq;
.super Lf/ap;
.source "Platform.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lf/ap;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/util/concurrent/Executor;)Lf/i;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_0
    new-instance v0, Lf/o;

    invoke-direct {v0, p1}, Lf/o;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lf/ar;

    invoke-direct {v0}, Lf/ar;-><init>()V

    return-object v0
.end method
