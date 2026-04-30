.class Lcom/twitter/sdk/android/core/internal/scribe/i;
.super Ljava/lang/Object;
.source "EventsFilesManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/twitter/sdk/android/core/internal/scribe/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/scribe/h;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/h;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/i;->a:Lcom/twitter/sdk/android/core/internal/scribe/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/internal/scribe/j;Lcom/twitter/sdk/android/core/internal/scribe/j;)I
    .locals 4

    .prologue
    .line 209
    iget-wide v0, p1, Lcom/twitter/sdk/android/core/internal/scribe/j;->b:J

    iget-wide v2, p2, Lcom/twitter/sdk/android/core/internal/scribe/j;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 206
    check-cast p1, Lcom/twitter/sdk/android/core/internal/scribe/j;

    check-cast p2, Lcom/twitter/sdk/android/core/internal/scribe/j;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/i;->a(Lcom/twitter/sdk/android/core/internal/scribe/j;Lcom/twitter/sdk/android/core/internal/scribe/j;)I

    move-result v0

    return v0
.end method
