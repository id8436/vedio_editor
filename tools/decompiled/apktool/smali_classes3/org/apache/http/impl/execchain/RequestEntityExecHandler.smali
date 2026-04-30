.class Lorg/apache/http/impl/execchain/RequestEntityExecHandler;
.super Ljava/lang/Object;
.source "RequestEntityExecHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final WRITE_TO_METHOD:Ljava/lang/reflect/Method;


# instance fields
.field private consumed:Z

.field private final original:Lorg/apache/http/HttpEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 49
    :try_start_0
    const-class v0, Lorg/apache/http/HttpEntity;

    const-string/jumbo v1, "writeTo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/io/OutputStream;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;->WRITE_TO_METHOD:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;->consumed:Z

    .line 60
    iput-object p1, p0, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;->original:Lorg/apache/http/HttpEntity;

    .line 61
    return-void
.end method


# virtual methods
.method public getOriginal()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;->original:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    sget-object v0, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;->WRITE_TO_METHOD:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;->consumed:Z

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;->original:Lorg/apache/http/HttpEntity;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    throw v1

    .line 83
    :cond_1
    throw v0
.end method

.method public isConsumed()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;->consumed:Z

    return v0
.end method
