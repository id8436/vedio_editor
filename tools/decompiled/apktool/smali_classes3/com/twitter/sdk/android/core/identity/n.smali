.class Lcom/twitter/sdk/android/core/identity/n;
.super Lcom/twitter/sdk/android/core/c;
.source "TwitterAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/aj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/u",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/sdk/android/core/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/u",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/n;->a:Lcom/twitter/sdk/android/core/u;

    .line 231
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/n;->b:Lcom/twitter/sdk/android/core/c;

    .line 232
    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 3

    .prologue
    .line 243
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Authorization completed with an error"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/n;->b:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->failure(Lcom/twitter/sdk/android/core/ah;)V

    .line 246
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Authorization completed successfully"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/n;->a:Lcom/twitter/sdk/android/core/u;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/t;

    invoke-interface {v1, v0}, Lcom/twitter/sdk/android/core/u;->a(Lcom/twitter/sdk/android/core/t;)V

    .line 238
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/n;->b:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->success(Lcom/twitter/sdk/android/core/s;)V

    .line 239
    return-void
.end method
