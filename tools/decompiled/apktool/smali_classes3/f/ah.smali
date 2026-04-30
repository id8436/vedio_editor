.class final Lf/ah;
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
.field private final a:Ld/ag;

.field private final b:Lf/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/k",
            "<TT;",
            "Ld/az;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ld/ag;Lf/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/ag;",
            "Lf/k",
            "<TT;",
            "Ld/az;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0}, Lf/z;-><init>()V

    .line 277
    iput-object p1, p0, Lf/ah;->a:Ld/ag;

    .line 278
    iput-object p2, p0, Lf/ah;->b:Lf/k;

    .line 279
    return-void
.end method


# virtual methods
.method a(Lf/at;Ljava/lang/Object;)V
    .locals 4
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

    .prologue
    .line 282
    if-nez p2, :cond_0

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    :try_start_0
    iget-object v0, p0, Lf/ah;->b:Lf/k;

    invoke-interface {v0, p2}, Lf/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/az;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    iget-object v1, p0, Lf/ah;->a:Ld/ag;

    invoke-virtual {p1, v1, v0}, Lf/at;->a(Ld/ag;Ld/az;)V

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to RequestBody"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
