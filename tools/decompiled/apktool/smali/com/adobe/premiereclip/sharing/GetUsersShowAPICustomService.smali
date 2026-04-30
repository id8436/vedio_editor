.class interface abstract Lcom/adobe/premiereclip/sharing/GetUsersShowAPICustomService;
.super Ljava/lang/Object;
.source "CustomTwitterApiClient.java"


# virtual methods
.method public abstract show(J)Lf/g;
    .param p1    # J
        .annotation runtime Lf/b/t;
            a = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lf/g",
            "<",
            "Lcom/twitter/sdk/android/core/a/q;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/f;
        a = "/1.1/users/show.json"
    .end annotation
.end method
