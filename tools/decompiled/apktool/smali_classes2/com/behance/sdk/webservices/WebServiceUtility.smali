.class public Lcom/behance/sdk/webservices/WebServiceUtility;
.super Ljava/lang/Object;
.source "WebServiceUtility.java"


# static fields
.field private static final PATH_DELIMITER:Ljava/lang/String; = "/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addApiKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    invoke-static {p0}, Ld/ai;->e(Ljava/lang/String;)Ld/ai;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ld/ai;->p()Ld/aj;

    move-result-object v0

    const-string/jumbo v1, "api_key"

    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDK;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ld/aj;->a(Ljava/lang/String;Ljava/lang/String;)Ld/aj;

    move-result-object v0

    invoke-virtual {v0}, Ld/aj;->c()Ld/ai;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ld/ai;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static baseApiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "https://cc-api-behance.adobe.io/v2"

    return-object v0
.end method

.method public static varargs pathConcat([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
