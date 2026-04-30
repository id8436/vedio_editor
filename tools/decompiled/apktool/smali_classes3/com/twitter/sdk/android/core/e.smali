.class public Lcom/twitter/sdk/android/core/e;
.super Lcom/twitter/sdk/android/core/t;
.source "GuestSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/t",
        "<",
        "Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/t;-><init>(Lcom/twitter/sdk/android/core/a;J)V

    .line 37
    return-void
.end method
