.class final Lf/ao;
.super Lf/z;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/z",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lf/z;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lf/at;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    const-string/jumbo v0, "@Url parameter is null."

    invoke-static {p2, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p1, p2}, Lf/at;->a(Ljava/lang/Object;)V

    .line 61
    return-void
.end method
