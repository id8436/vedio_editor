.class public Lcom/google/api/services/drive/Drive$Permissions;
.super Ljava/lang/Object;
.source "Drive.java"


# instance fields
.field final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    .prologue
    .line 4363
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5364
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4378
    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$Create;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Create;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)V

    .line 4379
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4380
    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4670
    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Delete;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Ljava/lang/String;)V

    .line 4671
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4672
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4882
    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Get;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Ljava/lang/String;)V

    .line 4883
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4884
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5103
    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$List;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;)V

    .line 5104
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5105
    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5359
    new-instance v0, Lcom/google/api/services/drive/Drive$Permissions$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Permissions$Update;-><init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)V

    .line 5360
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5361
    return-object v0
.end method
