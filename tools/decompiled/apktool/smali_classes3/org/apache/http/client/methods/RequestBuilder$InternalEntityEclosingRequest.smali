.class Lorg/apache/http/client/methods/RequestBuilder$InternalEntityEclosingRequest;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBaseHC4;
.source "RequestBuilder.java"


# instance fields
.field private final method:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBaseHC4;-><init>()V

    .line 342
    iput-object p1, p0, Lorg/apache/http/client/methods/RequestBuilder$InternalEntityEclosingRequest;->method:Ljava/lang/String;

    .line 343
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/http/client/methods/RequestBuilder$InternalEntityEclosingRequest;->method:Ljava/lang/String;

    return-object v0
.end method
