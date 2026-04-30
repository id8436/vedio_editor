.class interface abstract Lcom/adobe/premiereclip/sharing/TweetVideoAPICustomService;
.super Ljava/lang/Object;
.source "CustomTwitterApiClient.java"


# virtual methods
.method public abstract tweet(Ljava/lang/String;J)Lf/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lf/b/c;
            a = "status"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lf/b/c;
            a = "media_ids"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lf/g",
            "<",
            "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoTweet;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/e;
    .end annotation

    .annotation runtime Lf/b/o;
        a = "https://api.twitter.com/1.1/statuses/update.json"
    .end annotation
.end method
