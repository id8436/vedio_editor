.class public Lcom/twitter/sdk/android/core/internal/scribe/an;
.super Ljava/lang/Object;
.source "TwitterCoreScribeClientHolder.java"


# static fields
.field private static a:Lcom/twitter/sdk/android/core/internal/scribe/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static a()Lcom/twitter/sdk/android/core/internal/scribe/a;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/an;->a:Lcom/twitter/sdk/android/core/internal/scribe/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/g;Lcom/twitter/sdk/android/core/internal/s;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/u",
            "<+",
            "Lcom/twitter/sdk/android/core/t",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/g;",
            "Lcom/twitter/sdk/android/core/internal/s;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p4, p5}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/aa;

    move-result-object v5

    .line 50
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/a;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/g;Lcom/twitter/sdk/android/core/internal/s;Lcom/twitter/sdk/android/core/internal/scribe/aa;)V

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/an;->a:Lcom/twitter/sdk/android/core/internal/scribe/a;

    .line 52
    return-void
.end method
