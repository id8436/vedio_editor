.class public final Lcom/dropbox/core/DbxWrappedException;
.super Ljava/lang/Exception;
.source "DbxWrappedException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final errValue:Ljava/lang/Object;

.field private final requestId:Ljava/lang/String;

.field private final userMessage:Lcom/dropbox/core/LocalizedText;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dropbox/core/DbxWrappedException;->errValue:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lcom/dropbox/core/DbxWrappedException;->requestId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/dropbox/core/DbxWrappedException;->userMessage:Lcom/dropbox/core/LocalizedText;

    .line 28
    return-void
.end method

.method public static executeBlockForObject(Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0, p1, p2}, Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;->createRouteErrorCallback(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p2}, Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;->setRouteError(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0}, Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;->run()V

    .line 86
    :cond_0
    return-void
.end method

.method public static executeOtherBlocks(Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "tag"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 66
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 67
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    invoke-static {p0, p1, v0}, Lcom/dropbox/core/DbxWrappedException;->executeBlockForObject(Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static fromResponse(Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxWrappedException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;",
            "Lcom/dropbox/core/http/HttpRequestor$Response;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxWrappedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v1

    .line 46
    new-instance v0, Lcom/dropbox/core/ApiErrorResponse$Serializer;

    invoke-direct {v0, p0}, Lcom/dropbox/core/ApiErrorResponse$Serializer;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    .line 47
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/ApiErrorResponse;

    .line 49
    invoke-virtual {v0}, Lcom/dropbox/core/ApiErrorResponse;->getError()Ljava/lang/Object;

    move-result-object v2

    .line 51
    sget-object v3, Lcom/dropbox/core/DbxRequestUtil;->sharedCallbackFactory:Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;

    .line 52
    invoke-static {v3, p2, v2}, Lcom/dropbox/core/DbxWrappedException;->executeBlockForObject(Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-static {v3, p2, v2}, Lcom/dropbox/core/DbxWrappedException;->executeOtherBlocks(Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    new-instance v3, Lcom/dropbox/core/DbxWrappedException;

    invoke-virtual {v0}, Lcom/dropbox/core/ApiErrorResponse;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    invoke-direct {v3, v2, v1, v0}, Lcom/dropbox/core/DbxWrappedException;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;)V

    return-object v3
.end method


# virtual methods
.method public getErrorValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/DbxWrappedException;->errValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dropbox/core/DbxWrappedException;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMessage()Lcom/dropbox/core/LocalizedText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dropbox/core/DbxWrappedException;->userMessage:Lcom/dropbox/core/LocalizedText;

    return-object v0
.end method
