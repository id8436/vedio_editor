.class public interface abstract Lcom/twitter/sdk/android/core/services/SearchService;
.super Ljava/lang/Object;
.source "SearchService.java"


# virtual methods
.method public abstract tweets(Ljava/lang/String;Lcom/twitter/sdk/android/core/services/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lf/g;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lf/b/t;
            a = "q"
        .end annotation
    .end param
    .param p2    # Lcom/twitter/sdk/android/core/services/a/a;
        .annotation runtime Lf/b/t;
            a = "geocode"
            b = true
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lf/b/t;
            a = "lang"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lf/b/t;
            a = "locale"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lf/b/t;
            a = "result_type"
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Lf/b/t;
            a = "count"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lf/b/t;
            a = "until"
        .end annotation
    .end param
    .param p8    # Ljava/lang/Long;
        .annotation runtime Lf/b/t;
            a = "since_id"
        .end annotation
    .end param
    .param p9    # Ljava/lang/Long;
        .annotation runtime Lf/b/t;
            a = "max_id"
        .end annotation
    .end param
    .param p10    # Ljava/lang/Boolean;
        .annotation runtime Lf/b/t;
            a = "include_entities"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/services/a/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ")",
            "Lf/g",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lf/b/f;
        a = "/1.1/search/tweets.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method
