.class public interface abstract Lcom/twitter/sdk/android/core/services/ListService;
.super Ljava/lang/Object;
.source "ListService.java"


# virtual methods
.method public abstract statuses(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lf/g;
    .param p1    # Ljava/lang/Long;
        .annotation runtime Lf/b/t;
            a = "list_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lf/b/t;
            a = "slug"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lf/b/t;
            a = "owner_screen_name"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation runtime Lf/b/t;
            a = "owner_id"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation runtime Lf/b/t;
            a = "since_id"
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation runtime Lf/b/t;
            a = "max_id"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Lf/b/t;
            a = "count"
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation runtime Lf/b/t;
            a = "include_entities"
        .end annotation
    .end param
    .param p9    # Ljava/lang/Boolean;
        .annotation runtime Lf/b/t;
            a = "include_rts"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Lf/g",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/sdk/android/core/a/o;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lf/b/f;
        a = "/1.1/lists/statuses.json?tweet_mode=extended&include_cards=true&cards_platform=TwitterKit-13"
    .end annotation
.end method
