.class Lcom/twitter/sdk/android/core/internal/scribe/ag;
.super Ljava/lang/Object;
.source "ScribeFilesSender.java"

# interfaces
.implements Ld/al;


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/scribe/aa;

.field private final b:Lcom/twitter/sdk/android/core/internal/s;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/aa;Lcom/twitter/sdk/android/core/internal/s;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ag;->a:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    .line 252
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ag;->b:Lcom/twitter/sdk/android/core/internal/s;

    .line 253
    return-void
.end method


# virtual methods
.method public intercept(Ld/am;)Ld/bd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-interface {p1}, Ld/am;->a()Ld/ax;

    move-result-object v0

    invoke-virtual {v0}, Ld/ax;->e()Ld/ay;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ag;->a:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/aa;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    const-string/jumbo v1, "User-Agent"

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ag;->a:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/internal/scribe/aa;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ld/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ag;->b:Lcom/twitter/sdk/android/core/internal/s;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    const-string/jumbo v1, "X-Client-UUID"

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ag;->b:Lcom/twitter/sdk/android/core/internal/s;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ld/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    .line 282
    :cond_1
    const-string/jumbo v1, "X-Twitter-Polling"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ld/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    .line 284
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    invoke-interface {p1, v0}, Ld/am;->a(Ld/ax;)Ld/bd;

    move-result-object v0

    return-object v0
.end method
