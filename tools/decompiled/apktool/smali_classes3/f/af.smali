.class final Lf/af;
.super Lf/z;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/z",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lf/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/k",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lf/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lf/k",
            "<TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lf/z;-><init>()V

    .line 69
    const-string/jumbo v0, "name == null"

    invoke-static {p1, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lf/af;->a:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lf/af;->b:Lf/k;

    .line 71
    return-void
.end method


# virtual methods
.method a(Lf/at;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/at;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    if-nez p2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lf/af;->b:Lf/k;

    invoke-interface {v0, p2}, Lf/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lf/af;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lf/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
