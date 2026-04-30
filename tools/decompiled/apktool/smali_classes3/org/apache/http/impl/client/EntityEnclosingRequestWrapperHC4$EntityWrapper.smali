.class Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;
.super Lorg/apache/http/entity/HttpEntityWrapperHC4;
.source "EntityEnclosingRequestWrapperHC4.java"


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    .line 90
    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapperHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 91
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Z)Z

    .line 96
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->consumeContent()V

    .line 97
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Z)Z

    .line 102
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4$EntityWrapper;->this$0:Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;->access$002(Lorg/apache/http/impl/client/EntityEnclosingRequestWrapperHC4;Z)Z

    .line 108
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapperHC4;->writeTo(Ljava/io/OutputStream;)V

    .line 109
    return-void
.end method
