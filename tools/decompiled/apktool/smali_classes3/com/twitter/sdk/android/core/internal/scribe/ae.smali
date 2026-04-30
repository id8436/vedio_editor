.class Lcom/twitter/sdk/android/core/internal/scribe/ae;
.super Lcom/twitter/sdk/android/core/internal/scribe/h;
.source "ScribeFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/internal/scribe/h",
        "<",
        "Lcom/twitter/sdk/android/core/internal/scribe/ab;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/g;Lcom/twitter/sdk/android/core/internal/o;Lcom/twitter/sdk/android/core/internal/scribe/y;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/internal/scribe/g",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ab;",
            ">;",
            "Lcom/twitter/sdk/android/core/internal/o;",
            "Lcom/twitter/sdk/android/core/internal/scribe/y;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/twitter/sdk/android/core/internal/scribe/h;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/g;Lcom/twitter/sdk/android/core/internal/o;Lcom/twitter/sdk/android/core/internal/scribe/o;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "se"

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ae;->c:Lcom/twitter/sdk/android/core/internal/o;

    .line 48
    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/o;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tap"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    return-object v0
.end method
