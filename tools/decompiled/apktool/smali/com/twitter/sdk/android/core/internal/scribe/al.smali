.class public Lcom/twitter/sdk/android/core/internal/scribe/al;
.super Ljava/lang/Object;
.source "SyndicationClientEvent.java"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "6"
    .end annotation
.end field

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/scribe/ak;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/ak;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/al;->b:Lcom/twitter/sdk/android/core/internal/scribe/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/al;->a:Ljava/lang/String;

    .line 77
    return-void
.end method
