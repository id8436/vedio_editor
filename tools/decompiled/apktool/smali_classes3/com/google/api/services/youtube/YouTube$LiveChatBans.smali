.class public Lcom/google/api/services/youtube/YouTube$LiveChatBans;
.super Ljava/lang/Object;
.source "YouTube.java"


# instance fields
.field final synthetic this$0:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .prologue
    .line 7802
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatBans;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7928
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7817
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Delete;-><init>(Lcom/google/api/services/youtube/YouTube$LiveChatBans;Ljava/lang/String;)V

    .line 7818
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatBans;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7819
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/LiveChatBan;)Lcom/google/api/services/youtube/YouTube$LiveChatBans$Insert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7923
    new-instance v0, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$LiveChatBans$Insert;-><init>(Lcom/google/api/services/youtube/YouTube$LiveChatBans;Ljava/lang/String;Lcom/google/api/services/youtube/model/LiveChatBan;)V

    .line 7924
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$LiveChatBans;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7925
    return-object v0
.end method
