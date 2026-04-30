.class public Lcom/google/api/services/drive/Drive$Replies;
.super Ljava/lang/Object;
.source "Drive.java"


# instance fields
.field final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    .prologue
    .line 5674
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6349
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Reply;)Lcom/google/api/services/drive/Drive$Replies$Create;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5690
    new-instance v0, Lcom/google/api/services/drive/Drive$Replies$Create;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Replies$Create;-><init>(Lcom/google/api/services/drive/Drive$Replies;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Reply;)V

    .line 5691
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Replies;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5692
    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5806
    new-instance v0, Lcom/google/api/services/drive/Drive$Replies$Delete;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Replies$Delete;-><init>(Lcom/google/api/services/drive/Drive$Replies;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5807
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Replies;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5808
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5939
    new-instance v0, Lcom/google/api/services/drive/Drive$Replies$Get;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Replies$Get;-><init>(Lcom/google/api/services/drive/Drive$Replies;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5940
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Replies;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5941
    return-object v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6129
    new-instance v0, Lcom/google/api/services/drive/Drive$Replies$List;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$List;-><init>(Lcom/google/api/services/drive/Drive$Replies;Ljava/lang/String;Ljava/lang/String;)V

    .line 6130
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Replies;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6131
    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Reply;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6344
    new-instance v0, Lcom/google/api/services/drive/Drive$Replies$Update;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/Drive$Replies$Update;-><init>(Lcom/google/api/services/drive/Drive$Replies;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Reply;)V

    .line 6345
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Replies;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6346
    return-object v0
.end method
