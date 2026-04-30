.class public Lcom/twitter/sdk/android/core/internal/scribe/aj;
.super Ljava/lang/Object;
.source "SyndicatedSdkImpressionEvent.java"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AD_ID"
    .end annotation
.end field

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/scribe/ai;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/ai;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/aj;->b:Lcom/twitter/sdk/android/core/internal/scribe/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/aj;->a:Ljava/lang/String;

    .line 90
    return-void
.end method
