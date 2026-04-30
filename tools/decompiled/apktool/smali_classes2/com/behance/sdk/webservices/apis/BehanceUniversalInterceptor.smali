.class public Lcom/behance/sdk/webservices/apis/BehanceUniversalInterceptor;
.super Ljava/lang/Object;
.source "BehanceUniversalInterceptor.java"

# interfaces
.implements Ld/al;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Ld/am;)Ld/bd;
    .locals 3
    .param p1    # Ld/am;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-interface {p1}, Ld/am;->a()Ld/ax;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDK;->getUniversalHeader()Lcom/behance/sdk/network/BehanceNameValuePair;

    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    invoke-interface {p1, v0}, Ld/am;->a(Ld/ax;)Ld/bd;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    .line 25
    :cond_0
    invoke-virtual {v0}, Ld/ax;->e()Ld/ay;

    move-result-object v0

    .line 27
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ld/ay;->b(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    .line 29
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 30
    invoke-interface {p1, v0}, Ld/am;->a(Ld/ax;)Ld/bd;

    move-result-object v0

    goto :goto_0
.end method
