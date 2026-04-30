.class public Lcom/google/api/services/drive/Drive$Revisions;
.super Ljava/lang/Object;
.source "Drive.java"


# instance fields
.field final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    .prologue
    .line 6487
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Revisions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6967
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6503
    new-instance v0, Lcom/google/api/services/drive/Drive$Revisions$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Revisions$Delete;-><init>(Lcom/google/api/services/drive/Drive$Revisions;Ljava/lang/String;Ljava/lang/String;)V

    .line 6504
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Revisions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6505
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6618
    new-instance v0, Lcom/google/api/services/drive/Drive$Revisions$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Revisions$Get;-><init>(Lcom/google/api/services/drive/Drive$Revisions;Ljava/lang/String;Ljava/lang/String;)V

    .line 6619
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Revisions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6620
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6816
    new-instance v0, Lcom/google/api/services/drive/Drive$Revisions$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$List;-><init>(Lcom/google/api/services/drive/Drive$Revisions;Ljava/lang/String;)V

    .line 6817
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Revisions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6818
    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Revision;)Lcom/google/api/services/drive/Drive$Revisions$Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6962
    new-instance v0, Lcom/google/api/services/drive/Drive$Revisions$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Revisions$Update;-><init>(Lcom/google/api/services/drive/Drive$Revisions;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Revision;)V

    .line 6963
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Revisions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6964
    return-object v0
.end method
