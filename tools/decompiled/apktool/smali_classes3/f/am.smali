.class final Lf/am;
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
.field private final a:Lf/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/k",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method constructor <init>(Lf/k;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/k",
            "<TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Lf/z;-><init>()V

    .line 129
    iput-object p1, p0, Lf/am;->a:Lf/k;

    .line 130
    iput-boolean p2, p0, Lf/am;->b:Z

    .line 131
    return-void
.end method


# virtual methods
.method a(Lf/at;Ljava/lang/Object;)V
    .locals 3
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
    .line 134
    if-nez p2, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lf/am;->a:Lf/k;

    invoke-interface {v0, p2}, Lf/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lf/am;->b:Z

    invoke-virtual {p1, v0, v1, v2}, Lf/at;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
