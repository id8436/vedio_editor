.class Lcom/twitter/sdk/android/core/internal/scribe/d;
.super Lcom/twitter/sdk/android/core/internal/scribe/c;
.source "EnabledScribeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/internal/scribe/c",
        "<",
        "Lcom/twitter/sdk/android/core/internal/scribe/ab;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lcom/twitter/sdk/android/core/internal/scribe/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/twitter/sdk/android/core/internal/scribe/ae;Lcom/twitter/sdk/android/core/internal/scribe/aa;Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/internal/scribe/c;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/twitter/sdk/android/core/internal/scribe/h;)V

    .line 31
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/d;->f:Lcom/twitter/sdk/android/core/internal/scribe/s;

    .line 33
    iget v0, p4, Lcom/twitter/sdk/android/core/internal/scribe/aa;->h:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/d;->a(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public d()Lcom/twitter/sdk/android/core/internal/scribe/s;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/d;->f:Lcom/twitter/sdk/android/core/internal/scribe/s;

    return-object v0
.end method
