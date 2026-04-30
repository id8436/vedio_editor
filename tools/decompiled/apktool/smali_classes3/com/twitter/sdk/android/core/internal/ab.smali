.class public Lcom/twitter/sdk/android/core/internal/ab;
.super Ljava/lang/Object;
.source "TwitterSessionVerifier.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/aj;)Lcom/twitter/sdk/android/core/services/AccountService;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/twitter/sdk/android/core/w;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/core/w;-><init>(Lcom/twitter/sdk/android/core/aj;)V

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/w;->getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    return-object v0
.end method
