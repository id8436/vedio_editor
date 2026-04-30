.class public Lcom/google/api/services/drive/Drive$Changes;
.super Ljava/lang/Object;
.source "Drive.java"


# instance fields
.field final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Changes;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    return-void
.end method


# virtual methods
.method public getStartPageToken()Lcom/google/api/services/drive/Drive$Changes$GetStartPageToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/google/api/services/drive/Drive$Changes$GetStartPageToken;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Changes$GetStartPageToken;-><init>(Lcom/google/api/services/drive/Drive$Changes;)V

    .line 270
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Changes;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 271
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Changes$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Lcom/google/api/services/drive/Drive$Changes$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Changes$List;-><init>(Lcom/google/api/services/drive/Drive$Changes;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Changes;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 427
    return-object v0
.end method

.method public watch(Ljava/lang/String;Lcom/google/api/services/drive/model/Channel;)Lcom/google/api/services/drive/Drive$Changes$Watch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    new-instance v0, Lcom/google/api/services/drive/Drive$Changes$Watch;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Changes$Watch;-><init>(Lcom/google/api/services/drive/Drive$Changes;Ljava/lang/String;Lcom/google/api/services/drive/model/Channel;)V

    .line 856
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Changes;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 857
    return-object v0
.end method
