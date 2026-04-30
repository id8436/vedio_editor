.class public Lcom/google/api/services/drive/Drive$Channels;
.super Ljava/lang/Object;
.source "Drive.java"


# instance fields
.field final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Channels;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1301
    return-void
.end method


# virtual methods
.method public stop(Lcom/google/api/services/drive/model/Channel;)Lcom/google/api/services/drive/Drive$Channels$Stop;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1296
    new-instance v0, Lcom/google/api/services/drive/Drive$Channels$Stop;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Channels$Stop;-><init>(Lcom/google/api/services/drive/Drive$Channels;Lcom/google/api/services/drive/model/Channel;)V

    .line 1297
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Channels;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 1298
    return-object v0
.end method
