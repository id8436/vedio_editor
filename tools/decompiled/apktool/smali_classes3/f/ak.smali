.class final Lf/ak;
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

.field private final c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lf/k;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lf/k",
            "<TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lf/z;-><init>()V

    .line 109
    const-string/jumbo v0, "name == null"

    invoke-static {p1, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lf/ak;->a:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lf/ak;->b:Lf/k;

    .line 111
    iput-boolean p3, p0, Lf/ak;->c:Z

    .line 112
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
    .line 115
    if-nez p2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lf/ak;->b:Lf/k;

    invoke-interface {v0, p2}, Lf/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lf/ak;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lf/ak;->c:Z

    invoke-virtual {p1, v1, v0, v2}, Lf/at;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
