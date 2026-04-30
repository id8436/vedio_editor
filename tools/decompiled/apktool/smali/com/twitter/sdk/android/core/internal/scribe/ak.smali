.class public Lcom/twitter/sdk/android/core/internal/scribe/ak;
.super Lcom/twitter/sdk/android/core/internal/scribe/ab;
.source "SyndicationClientEvent.java"


# instance fields
.field public final f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_info"
    .end annotation
.end field

.field public final h:Lcom/twitter/sdk/android/core/internal/scribe/al;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_ids"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/e;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/scribe/e;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    const-string/jumbo v2, "tfw_client_event"

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/ab;-><init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/internal/scribe/e;JLjava/util/List;)V

    .line 56
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ak;->f:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ak;->g:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/al;

    invoke-direct {v0, p0, p6}, Lcom/twitter/sdk/android/core/internal/scribe/al;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/ak;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ak;->h:Lcom/twitter/sdk/android/core/internal/scribe/al;

    .line 59
    return-void
.end method
