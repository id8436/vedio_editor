.class public interface abstract Lcom/twitter/sdk/android/core/services/AccountService;
.super Ljava/lang/Object;
.source "AccountService.java"


# virtual methods
.method public abstract verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lf/g;
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lf/b/t;
            a = "include_entities"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lf/b/t;
            a = "skip_status"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lf/b/t;
            a = "include_email"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Lf/g",
            "<",
            "Lcom/twitter/sdk/android/core/a/q;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/f;
        a = "/1.1/account/verify_credentials.json"
    .end annotation
.end method
